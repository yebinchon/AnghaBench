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
struct page {struct page* freelist; } ;
struct dmar_domain {int dummy; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (struct dma_pte*) ; 
 scalar_t__ FUNC1 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_pte*) ; 
 struct dma_pte* FUNC4 (struct page*) ; 
 struct page* FUNC5 (int) ; 

__attribute__((used)) static struct page *FUNC6(struct dmar_domain *domain,
					    int level, struct dma_pte *pte,
					    struct page *freelist)
{
	struct page *pg;

	pg = FUNC5(FUNC0(pte) >> PAGE_SHIFT);
	pg->freelist = freelist;
	freelist = pg;

	if (level == 1)
		return freelist;

	pte = FUNC4(pg);
	do {
		if (FUNC1(pte) && !FUNC2(pte))
			freelist = FUNC6(domain, level - 1,
							   pte, freelist);
		pte++;
	} while (!FUNC3(pte));

	return freelist;
}