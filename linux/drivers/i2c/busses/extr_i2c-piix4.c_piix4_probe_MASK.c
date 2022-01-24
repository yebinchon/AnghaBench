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
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int revision; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ PCI_DEVICE_ID_AMD_HUDSON2_SMBUS ; 
 scalar_t__ PCI_DEVICE_ID_AMD_KERNCZ_SMBUS ; 
 scalar_t__ PCI_DEVICE_ID_ATI_SBX00_SMBUS ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ PCI_VENDOR_ID_ATI ; 
 scalar_t__ PCI_VENDOR_ID_HYGON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct pci_dev*,int,int,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  piix4_aux_adapter ; 
 char* piix4_aux_port_name_sb800 ; 
 int /*<<< orphan*/ * piix4_main_adapters ; 
 int FUNC4 (struct pci_dev*,struct pci_device_id const*) ; 
 int FUNC5 (struct pci_dev*,struct pci_device_id const*,int) ; 
 int FUNC6 (struct pci_dev*,struct pci_device_id const*,int) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev, const struct pci_device_id *id)
{
	int retval;
	bool is_sb800 = false;

	if ((dev->vendor == PCI_VENDOR_ID_ATI &&
	     dev->device == PCI_DEVICE_ID_ATI_SBX00_SMBUS &&
	     dev->revision >= 0x40) ||
	    dev->vendor == PCI_VENDOR_ID_AMD ||
	    dev->vendor == PCI_VENDOR_ID_HYGON) {
		bool notify_imc = false;
		is_sb800 = true;

		if ((dev->vendor == PCI_VENDOR_ID_AMD ||
		     dev->vendor == PCI_VENDOR_ID_HYGON) &&
		    dev->device == PCI_DEVICE_ID_AMD_KERNCZ_SMBUS) {
			u8 imc;

			/*
			 * Detect if IMC is active or not, this method is
			 * described on coreboot's AMD IMC notes
			 */
			FUNC1(dev->bus, FUNC0(0x14, 3),
						 0x40, &imc);
			if (imc & 0x80)
				notify_imc = true;
		}

		/* base address location etc changed in SB800 */
		retval = FUNC6(dev, id, 0);
		if (retval < 0)
			return retval;

		/*
		 * Try to register multiplexed main SMBus adapter,
		 * give up if we can't
		 */
		retval = FUNC3(dev, retval, notify_imc);
		if (retval < 0)
			return retval;
	} else {
		retval = FUNC4(dev, id);
		if (retval < 0)
			return retval;

		/* Try to register main SMBus adapter, give up if we can't */
		retval = FUNC2(dev, retval, false, 0, false, 0,
					   "", &piix4_main_adapters[0]);
		if (retval < 0)
			return retval;
	}

	/* Check for auxiliary SMBus on some AMD chipsets */
	retval = -ENODEV;

	if (dev->vendor == PCI_VENDOR_ID_ATI &&
	    dev->device == PCI_DEVICE_ID_ATI_SBX00_SMBUS) {
		if (dev->revision < 0x40) {
			retval = FUNC5(dev, id, 0x58);
		} else {
			/* SB800 added aux bus too */
			retval = FUNC6(dev, id, 1);
		}
	}

	if (dev->vendor == PCI_VENDOR_ID_AMD &&
	    dev->device == PCI_DEVICE_ID_AMD_HUDSON2_SMBUS) {
		retval = FUNC6(dev, id, 1);
	}

	if (retval > 0) {
		/* Try to add the aux adapter if it exists,
		 * piix4_add_adapter will clean up if this fails */
		FUNC2(dev, retval, false, 0, false, 1,
				  is_sb800 ? piix4_aux_port_name_sb800 : "",
				  &piix4_aux_adapter);
	}

	return 0;
}