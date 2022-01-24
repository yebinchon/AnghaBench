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
struct dmar_domain {int dummy; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_pte*) ; 
 scalar_t__ FUNC3 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,struct dma_pte*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_pte*) ; 
 unsigned long FUNC7 (int) ; 
 unsigned long FUNC8 (int) ; 
 unsigned long FUNC9 (unsigned long,unsigned long) ; 
 size_t FUNC10 (unsigned long,int) ; 
 struct dma_pte* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct dmar_domain *domain, int level,
			       int retain_level, struct dma_pte *pte,
			       unsigned long pfn, unsigned long start_pfn,
			       unsigned long last_pfn)
{
	pfn = FUNC9(start_pfn, pfn);
	pte = &pte[FUNC10(pfn, level)];

	do {
		unsigned long level_pfn;
		struct dma_pte *level_pte;

		if (!FUNC2(pte) || FUNC3(pte))
			goto next;

		level_pfn = pfn & FUNC7(level);
		level_pte = FUNC11(FUNC1(pte));

		if (level > 2) {
			FUNC12(domain, level - 1, retain_level,
					   level_pte, level_pfn, start_pfn,
					   last_pfn);
		}

		/*
		 * Free the page table if we're below the level we want to
		 * retain and the range covers the entire table.
		 */
		if (level < retain_level && !(start_pfn > level_pfn ||
		      last_pfn < level_pfn + FUNC8(level) - 1)) {
			FUNC0(pte);
			FUNC4(domain, pte, sizeof(*pte));
			FUNC6(level_pte);
		}
next:
		pfn += FUNC8(level);
	} while (!FUNC5(++pte) && pfn <= last_pfn);
}