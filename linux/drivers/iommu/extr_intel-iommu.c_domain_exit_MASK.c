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
struct dmar_domain {int /*<<< orphan*/  gaw; scalar_t__ pgd; int /*<<< orphan*/  iovad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*) ; 
 struct page* FUNC3 (struct dmar_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dmar_domain *domain)
{

	/* Remove associated devices and clear attached or cached domains */
	FUNC2(domain);

	/* destroy iovas */
	FUNC5(&domain->iovad);

	if (domain->pgd) {
		struct page *freelist;

		freelist = FUNC3(domain, 0, FUNC0(domain->gaw));
		FUNC1(freelist);
	}

	FUNC4(domain);
}