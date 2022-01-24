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
typedef  int u8 ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;

/* Variables and functions */
 int AMD_IDE_CONFIG ; 
 scalar_t__ PCI_DEVICE_ID_AMD_COBRA_7401 ; 
 scalar_t__ PCI_DEVICE_ID_AMD_VIPER_7409 ; 
 scalar_t__ PCI_DEVICE_ID_AMD_VIPER_7411 ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev)
{
	u8 t = 0, offset = FUNC2(dev);

/*
 * Check 80-wire cable presence.
 */

	if (dev->vendor == PCI_VENDOR_ID_AMD &&
	    dev->device == PCI_DEVICE_ID_AMD_COBRA_7401)
		; /* no UDMA > 2 */
	else if (dev->vendor == PCI_VENDOR_ID_AMD &&
		 dev->device == PCI_DEVICE_ID_AMD_VIPER_7409)
		FUNC0(dev);
	else
		FUNC1(dev);

/*
 * Take care of prefetch & postwrite.
 */

	FUNC3(dev, AMD_IDE_CONFIG + offset, &t);
	/*
	 * Check for broken FIFO support.
	 */
	if (dev->vendor == PCI_VENDOR_ID_AMD &&
	    dev->device == PCI_DEVICE_ID_AMD_VIPER_7411)
		t &= 0x0f;
	else
		t |= 0xf0;
	FUNC4(dev, AMD_IDE_CONFIG + offset, t);

	return 0;
}