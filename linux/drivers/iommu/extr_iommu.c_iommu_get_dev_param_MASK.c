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
struct iommu_param {int /*<<< orphan*/  lock; } ;
struct device {struct iommu_param* iommu_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iommu_param* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_param *FUNC2(struct device *dev)
{
	struct iommu_param *param = dev->iommu_param;

	if (param)
		return param;

	param = FUNC0(sizeof(*param), GFP_KERNEL);
	if (!param)
		return NULL;

	FUNC1(&param->lock);
	dev->iommu_param = param;
	return param;
}