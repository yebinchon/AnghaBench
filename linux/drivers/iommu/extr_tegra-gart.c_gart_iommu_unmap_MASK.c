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
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct gart_device {int /*<<< orphan*/  pte_lock; } ;

/* Variables and functions */
 int FUNC0 (struct gart_device*,unsigned long) ; 
 struct gart_device* gart_handle ; 
 scalar_t__ FUNC1 (struct gart_device*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4(struct iommu_domain *domain, unsigned long iova,
			       size_t bytes, struct iommu_iotlb_gather *gather)
{
	struct gart_device *gart = gart_handle;
	int err;

	if (FUNC1(gart, iova, bytes))
		return 0;

	FUNC2(&gart->pte_lock);
	err = FUNC0(gart, iova);
	FUNC3(&gart->pte_lock);

	return err ? 0 : bytes;
}