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
struct protection_domain {int /*<<< orphan*/  lock; int /*<<< orphan*/  mode; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct protection_domain* FUNC3 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct protection_domain*) ; 

void FUNC5(struct iommu_domain *dom)
{
	struct protection_domain *domain = FUNC3(dom);
	unsigned long flags;

	FUNC1(&domain->lock, flags);

	/* Update data structure */
	domain->mode    = PAGE_MODE_NONE;

	/* Make changes visible to IOMMUs */
	FUNC4(domain);

	/* Page-table is not visible to IOMMU anymore, so free it */
	FUNC0(domain);

	FUNC2(&domain->lock, flags);
}