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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_pte*) ; 
 struct dma_pte* FUNC3 (struct dmar_domain*,unsigned long,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,struct dma_pte*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_pte*) ; 
 scalar_t__ FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(struct dmar_domain *domain,
				unsigned long start_pfn,
				unsigned long last_pfn)
{
	unsigned int large_page;
	struct dma_pte *first_pte, *pte;

	FUNC0(!FUNC5(domain, start_pfn));
	FUNC0(!FUNC5(domain, last_pfn));
	FUNC0(start_pfn > last_pfn);

	/* we don't need lock here; nobody else touches the iova range */
	do {
		large_page = 1;
		first_pte = pte = FUNC3(domain, start_pfn, 1, &large_page);
		if (!pte) {
			start_pfn = FUNC1(start_pfn + 1, large_page + 1);
			continue;
		}
		do {
			FUNC2(pte);
			start_pfn += FUNC7(large_page);
			pte++;
		} while (start_pfn <= last_pfn && !FUNC6(pte));

		FUNC4(domain, first_pte,
				   (void *)pte - (void *)first_pte);

	} while (start_pfn && start_pfn <= last_pfn);
}