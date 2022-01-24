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
struct dmar_domain {int /*<<< orphan*/ * pgd; int /*<<< orphan*/  gaw; int /*<<< orphan*/  agaw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dmar_domain *domain,
				   unsigned long start_pfn,
				   unsigned long last_pfn,
				   int retain_level)
{
	FUNC0(!FUNC5(domain, start_pfn));
	FUNC0(!FUNC5(domain, last_pfn));
	FUNC0(start_pfn > last_pfn);

	FUNC3(domain, start_pfn, last_pfn);

	/* We don't need lock here; nobody else touches the iova range */
	FUNC4(domain, FUNC2(domain->agaw), retain_level,
			   domain->pgd, 0, start_pfn, last_pfn);

	/* free pgd */
	if (start_pfn == 0 && last_pfn == FUNC1(domain->gaw)) {
		FUNC6(domain->pgd);
		domain->pgd = NULL;
	}
}