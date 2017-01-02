test:
	t/testexpect.pl

test-%:
	t/testexpect.pl $*.txt

t/%.mw: t/%.txt
	./twiki2mediawiki.pl -stdout $< >$@

mw: $(subst .txt,.mw,$(wildcard t/*.txt))
