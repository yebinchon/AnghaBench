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
typedef  int /*<<< orphan*/  u64 ;
struct protection_domain {int /*<<< orphan*/  lock; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct protection_domain*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct protection_domain* FUNC3 (struct iommu_domain*) ; 

int FUNC4(struct iommu_domain *dom, int pasid,
			 u64 address)
{
	struct protection_domain *domain = FUNC3(dom);
	unsigned long flags;
	int ret;

	FUNC1(&domain->lock, flags);
	ret = FUNC0(domain, pasid, address);
	FUNC2(&domain->lock, flags);

	return ret;
}