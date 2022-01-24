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
struct rk_iommudata {int /*<<< orphan*/  iommu; } ;
struct platform_device {int dummy; } ;
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct TYPE_2__ {struct rk_iommudata* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rk_iommudata* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_dev ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			     struct of_phandle_args *args)
{
	struct platform_device *iommu_dev;
	struct rk_iommudata *data;

	data = FUNC0(dma_dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	iommu_dev = FUNC1(args->np);

	data->iommu = FUNC3(iommu_dev);
	dev->archdata.iommu = data;

	FUNC2(iommu_dev);

	return 0;
}