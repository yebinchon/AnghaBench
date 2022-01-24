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
struct platform_device {int dummy; } ;
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct iommu_fwspec {int /*<<< orphan*/  iommu_priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct iommu_fwspec* FUNC0 (struct device*) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				      struct of_phandle_args *args)
{
	struct iommu_fwspec *fwspec = FUNC0(dev);
	struct platform_device *ipmmu_pdev;

	ipmmu_pdev = FUNC1(args->np);
	if (!ipmmu_pdev)
		return -ENODEV;

	fwspec->iommu_priv = FUNC2(ipmmu_pdev);

	return 0;
}