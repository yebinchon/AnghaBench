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
struct of_phandle_args {int args_count; int /*<<< orphan*/  np; int /*<<< orphan*/  args; } ;
struct fsl_mc_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  icid; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int NO_IOMMU ; 
 int FUNC0 (int /*<<< orphan*/ *,struct of_phandle_args*) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fsl_mc_device *mc_dev,
				struct device_node *master_np)
{
	struct of_phandle_args iommu_spec = { .args_count = 1 };
	int err;

	err = FUNC1(master_np, mc_dev->icid, "iommu-map",
			 "iommu-map-mask", &iommu_spec.np,
			 iommu_spec.args);
	if (err)
		return err == -ENODEV ? NO_IOMMU : err;

	err = FUNC0(&mc_dev->dev, &iommu_spec);
	FUNC2(iommu_spec.np);
	return err;
}