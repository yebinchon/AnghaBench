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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct iommu_dev_data {size_t devid; int /*<<< orphan*/  pri_tlp; } ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 struct iommu_dev_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct amd_iommu*,struct iommu_cmd*) ; 

int FUNC3(struct pci_dev *pdev, int pasid,
			   int status, int tag)
{
	struct iommu_dev_data *dev_data;
	struct amd_iommu *iommu;
	struct iommu_cmd cmd;

	dev_data = FUNC1(&pdev->dev);
	iommu    = amd_iommu_rlookup_table[dev_data->devid];

	FUNC0(&cmd, dev_data->devid, pasid, status,
			   tag, dev_data->pri_tlp);

	return FUNC2(iommu, &cmd);
}