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
typedef  int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_SI ; 
 int /*<<< orphan*/  SIS5595_BASE_REG ; 
 int /*<<< orphan*/  SIS5595_ENABLE_REG ; 
 int SIS5595_EXTENT ; 
 int* blacklist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int force_addr ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_bridge ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  sis5595_driver ; 

__attribute__((used)) static int FUNC13(struct pci_dev *dev,
				       const struct pci_device_id *id)
{
	u16 address;
	u8 enable;
	int *i;

	for (i = blacklist; *i != 0; i++) {
		struct pci_dev *d;
		d = FUNC5(PCI_VENDOR_ID_SI, *i, NULL);
		if (d) {
			FUNC1(&d->dev,
				"Looked for SIS5595 but found unsupported device %.4x\n",
				*i);
			FUNC4(d);
			return -ENODEV;
		}
	}

	force_addr &= ~(SIS5595_EXTENT - 1);
	if (force_addr) {
		FUNC2(&dev->dev, "Forcing ISA address 0x%x\n", force_addr);
		FUNC9(dev, SIS5595_BASE_REG, force_addr);
	}

	if (PCIBIOS_SUCCESSFUL !=
	    FUNC7(dev, SIS5595_BASE_REG, &address)) {
		FUNC1(&dev->dev, "Failed to read ISA address\n");
		return -ENODEV;
	}

	address &= ~(SIS5595_EXTENT - 1);
	if (!address) {
		FUNC1(&dev->dev,
			"Base address not set - upgrade BIOS or use force_addr=0xaddr\n");
		return -ENODEV;
	}
	if (force_addr && address != force_addr) {
		/* doesn't work for some chips? */
		FUNC1(&dev->dev, "Failed to force ISA address\n");
		return -ENODEV;
	}

	if (PCIBIOS_SUCCESSFUL !=
	    FUNC6(dev, SIS5595_ENABLE_REG, &enable)) {
		FUNC1(&dev->dev, "Failed to read enable register\n");
		return -ENODEV;
	}
	if (!(enable & 0x80)) {
		if ((PCIBIOS_SUCCESSFUL !=
		     FUNC8(dev, SIS5595_ENABLE_REG,
					   enable | 0x80))
		 || (PCIBIOS_SUCCESSFUL !=
		     FUNC6(dev, SIS5595_ENABLE_REG, &enable))
		 || (!(enable & 0x80))) {
			/* doesn't work for some chips! */
			FUNC1(&dev->dev, "Failed to enable HWM device\n");
			return -ENODEV;
		}
	}

	if (FUNC10(&sis5595_driver)) {
		FUNC0(&dev->dev, "Failed to register sis5595 driver\n");
		goto exit;
	}

	s_bridge = FUNC3(dev);
	/* Sets global pdev as a side effect */
	if (FUNC12(address))
		goto exit_unregister;

	/*
	 * Always return failure here.  This is to allow other drivers to bind
	 * to this pci device.  We don't really want to have control over the
	 * pci device, we only wanted to read as few register values from it.
	 */
	return -ENODEV;

exit_unregister:
	FUNC4(dev);
	FUNC11(&sis5595_driver);
exit:
	return -ENODEV;
}