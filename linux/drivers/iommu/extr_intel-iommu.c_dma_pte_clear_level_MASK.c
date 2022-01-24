#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct page {int dummy; } ;
struct dmar_domain {int dummy; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pte*) ; 
 struct page* FUNC2 (struct dmar_domain*,int,struct dma_pte*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*,struct dma_pte*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_pte*) ; 
 unsigned long FUNC7 (int) ; 
 unsigned long FUNC8 (int) ; 
 unsigned long FUNC9 (unsigned long,unsigned long) ; 
 size_t FUNC10 (unsigned long,int) ; 
 struct dma_pte* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC12(struct dmar_domain *domain, int level,
					struct dma_pte *pte, unsigned long pfn,
					unsigned long start_pfn,
					unsigned long last_pfn,
					struct page *freelist)
{
	struct dma_pte *first_pte = NULL, *last_pte = NULL;

	pfn = FUNC9(start_pfn, pfn);
	pte = &pte[FUNC10(pfn, level)];

	do {
		unsigned long level_pfn;

		if (!FUNC3(pte))
			goto next;

		level_pfn = pfn & FUNC7(level);

		/* If range covers entire pagetable, free it */
		if (start_pfn <= level_pfn &&
		    last_pfn >= level_pfn + FUNC8(level) - 1) {
			/* These suborbinate page tables are going away entirely. Don't
			   bother to clear them; we're just going to *free* them. */
			if (level > 1 && !FUNC4(pte))
				freelist = FUNC2(domain, level - 1, pte, freelist);

			FUNC0(pte);
			if (!first_pte)
				first_pte = pte;
			last_pte = pte;
		} else if (level > 1) {
			/* Recurse down into a level that isn't *entirely* obsolete */
			freelist = FUNC12(domain, level - 1,
						       FUNC11(FUNC1(pte)),
						       level_pfn, start_pfn, last_pfn,
						       freelist);
		}
next:
		pfn += FUNC8(level);
	} while (!FUNC6(++pte) && pfn <= last_pfn);

	if (first_pte)
		FUNC5(domain, first_pte,
				   (void *)++last_pte - (void *)first_pte);

	return freelist;
}