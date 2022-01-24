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
typedef  void* u8 ;
typedef  int u64 ;
struct pci_dev {int dummy; } ;
struct amd_iommu {void* max_counters; void* max_banks; scalar_t__ mmio_base; struct pci_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEATURE_PC ; 
 scalar_t__ MMIO_CNTR_CONF_OFFSET ; 
 int amd_iommu_pc_present ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct amd_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct amd_iommu *iommu)
{
	struct pci_dev *pdev = iommu->dev;
	u64 val = 0xabcd, val2 = 0;

	if (!FUNC0(iommu, FEATURE_PC))
		return;

	amd_iommu_pc_present = true;

	/* Check if the performance counters can be written to */
	if ((FUNC1(iommu, 0, 0, 0, &val, true)) ||
	    (FUNC1(iommu, 0, 0, 0, &val2, false)) ||
	    (val != val2)) {
		FUNC2(pdev, "Unable to write to IOMMU perf counter.\n");
		amd_iommu_pc_present = false;
		return;
	}

	FUNC3(pdev, "IOMMU performance counters supported\n");

	val = FUNC4(iommu->mmio_base + MMIO_CNTR_CONF_OFFSET);
	iommu->max_banks = (u8) ((val >> 12) & 0x3f);
	iommu->max_counters = (u8) ((val >> 7) & 0xf);
}