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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct of_phandle_args {int args_count; int /*<<< orphan*/  np; int /*<<< orphan*/  args; } ;
struct of_pci_iommu_alias_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  np; } ;

/* Variables and functions */
 int ENODEV ; 
 int NO_IOMMU ; 
 int FUNC0 (int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, u16 alias, void *data)
{
	struct of_pci_iommu_alias_info *info = data;
	struct of_phandle_args iommu_spec = { .args_count = 1 };
	int err;

	err = FUNC1(info->np, alias, "iommu-map", "iommu-map-mask",
			 &iommu_spec.np, iommu_spec.args);
	if (err)
		return err == -ENODEV ? NO_IOMMU : err;

	err = FUNC0(info->dev, &iommu_spec);
	FUNC2(iommu_spec.np);
	return err;
}