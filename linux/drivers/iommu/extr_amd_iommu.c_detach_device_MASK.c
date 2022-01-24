#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct protection_domain {int flags; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int enabled; } ;
struct iommu_dev_data {int /*<<< orphan*/  lock; TYPE_1__ ats; scalar_t__ iommu_v2; struct protection_domain* domain; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PD_IOMMUV2_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_dev_data*) ; 
 struct iommu_dev_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static void FUNC11(struct device *dev)
{
	struct protection_domain *domain;
	struct iommu_dev_data *dev_data;
	unsigned long flags;

	dev_data = FUNC3(dev);
	domain   = dev_data->domain;

	FUNC7(&domain->lock, flags);

	FUNC6(&dev_data->lock);

	/*
	 * First check if the device is still attached. It might already
	 * be detached from its domain because the generic
	 * iommu_detach_group code detached it and we try again here in
	 * our alias handling.
	 */
	if (FUNC0(!dev_data->domain))
		goto out;

	FUNC2(dev_data);

	if (!FUNC1(dev))
		goto out;

	if (domain->flags & PD_IOMMUV2_MASK && dev_data->iommu_v2)
		FUNC5(FUNC10(dev));
	else if (dev_data->ats.enabled)
		FUNC4(FUNC10(dev));

	dev_data->ats.enabled = false;

out:
	FUNC8(&dev_data->lock);

	FUNC9(&domain->lock, flags);
}