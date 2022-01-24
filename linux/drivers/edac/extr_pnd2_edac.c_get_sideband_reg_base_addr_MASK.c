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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,scalar_t__) ; 

__attribute__((used)) static u64 FUNC6(void)
{
	struct pci_dev *pdev;
	u32 hi, lo;
	u8 hidden;

	pdev = FUNC2(PCI_VENDOR_ID_INTEL, 0x19dd, NULL);
	if (pdev) {
		/* Unhide the P2SB device, if it's hidden */
		FUNC3(pdev, 0xe1, &hidden);
		if (hidden)
			FUNC5(pdev, 0xe1, 0);

		FUNC4(pdev, 0x10, &lo);
		FUNC4(pdev, 0x14, &hi);
		lo &= 0xfffffff0;

		/* Hide the P2SB device, if it was hidden before */
		if (hidden)
			FUNC5(pdev, 0xe1, hidden);

		FUNC1(pdev);
		return (FUNC0(hi, 32) | FUNC0(lo, 0));
	} else {
		return 0xfd000000;
	}
}