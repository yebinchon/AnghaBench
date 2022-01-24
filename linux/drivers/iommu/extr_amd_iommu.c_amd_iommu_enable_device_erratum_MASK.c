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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct iommu_dev_data {int errata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct iommu_dev_data* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct pci_dev *pdev, u32 erratum)
{
	struct iommu_dev_data *dev_data;

	if (!FUNC0())
		return;

	dev_data = FUNC1(&pdev->dev);
	dev_data->errata |= (1 << erratum);
}