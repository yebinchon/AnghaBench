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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct b_cr_mchbar_lo_pci {int /*<<< orphan*/  base; int /*<<< orphan*/  enable; } ;
struct b_cr_mchbar_hi_pci {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC5(void)
{
	struct b_cr_mchbar_lo_pci lo;
	struct b_cr_mchbar_hi_pci hi;
	struct pci_dev *pdev;

	pdev = FUNC3(PCI_VENDOR_ID_INTEL, 0x1980, NULL);
	if (pdev) {
		FUNC4(pdev, 0x48, (u32 *)&lo);
		FUNC4(pdev, 0x4c, (u32 *)&hi);
		FUNC2(pdev);
	} else {
		return 0;
	}

	if (!lo.enable) {
		FUNC1(2, "MMIO via memory controller hub base address is disabled!\n");
		return 0;
	}

	return FUNC0(hi.base, 32) | FUNC0(lo.base, 15);
}