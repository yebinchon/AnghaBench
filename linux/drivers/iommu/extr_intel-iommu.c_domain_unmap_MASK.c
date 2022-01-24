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
struct dmar_domain {int /*<<< orphan*/ * pgd; int /*<<< orphan*/  gaw; int /*<<< orphan*/  agaw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct dmar_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,unsigned long) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC6(struct dmar_domain *domain,
				 unsigned long start_pfn,
				 unsigned long last_pfn)
{
	struct page *freelist;

	FUNC0(!FUNC4(domain, start_pfn));
	FUNC0(!FUNC4(domain, last_pfn));
	FUNC0(start_pfn > last_pfn);

	/* we don't need lock here; nobody else touches the iova range */
	freelist = FUNC3(domain, FUNC2(domain->agaw),
				       domain->pgd, 0, start_pfn, last_pfn, NULL);

	/* free pgd */
	if (start_pfn == 0 && last_pfn == FUNC1(domain->gaw)) {
		struct page *pgd_page = FUNC5(domain->pgd);
		pgd_page->freelist = freelist;
		freelist = pgd_page;

		domain->pgd = NULL;
	}

	return freelist;
}