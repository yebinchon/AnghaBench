#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI1563_SMBBA ; 
 int ALI1563_SMB_HOSTEN ; 
 int ALI1563_SMB_IOEN ; 
 int ALI1563_SMB_IOSIZE ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ ali1563_pci_driver ; 
 int ali1563_smba ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev)
{
	u16 ctrl;

	FUNC4(dev, ALI1563_SMBBA, &ctrl);

	/* SMB I/O Base in high 12 bits and must be aligned with the
	 * size of the I/O space. */
	ali1563_smba = ctrl & ~(ALI1563_SMB_IOSIZE - 1);
	if (!ali1563_smba) {
		FUNC3(&dev->dev, "ali1563_smba Uninitialized\n");
		goto Err;
	}

	/* Check if device is enabled */
	if (!(ctrl & ALI1563_SMB_HOSTEN)) {
		FUNC3(&dev->dev, "Host Controller not enabled\n");
		goto Err;
	}
	if (!(ctrl & ALI1563_SMB_IOEN)) {
		FUNC3(&dev->dev, "I/O space not enabled, trying manually\n");
		FUNC5(dev, ALI1563_SMBBA,
				      ctrl | ALI1563_SMB_IOEN);
		FUNC4(dev, ALI1563_SMBBA, &ctrl);
		if (!(ctrl & ALI1563_SMB_IOEN)) {
			FUNC1(&dev->dev,
				"I/O space still not enabled, giving up\n");
			goto Err;
		}
	}

	if (FUNC0(ali1563_smba, ALI1563_SMB_IOSIZE,
			      ali1563_pci_driver.name))
		goto Err;

	if (!FUNC6(ali1563_smba, ALI1563_SMB_IOSIZE,
			    ali1563_pci_driver.name)) {
		FUNC1(&dev->dev, "Could not allocate I/O space at 0x%04x\n",
			ali1563_smba);
		goto Err;
	}
	FUNC2(&dev->dev, "Found ALi1563 SMBus at 0x%04x\n", ali1563_smba);

	return 0;
Err:
	return -ENODEV;
}