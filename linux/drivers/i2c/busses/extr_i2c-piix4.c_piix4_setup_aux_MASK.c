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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  SMBIOSIZE ; 
 scalar_t__ FUNC0 (unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned short,unsigned short*) ; 
 TYPE_1__ piix4_driver ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *PIIX4_dev,
			   const struct pci_device_id *id,
			   unsigned short base_reg_addr)
{
	/* Set up auxiliary SMBus controllers found on some
	 * AMD chipsets e.g. SP5100 (SB700 derivative) */

	unsigned short piix4_smba;

	/* Read address of auxiliary SMBus controller */
	FUNC4(PIIX4_dev, base_reg_addr, &piix4_smba);
	if ((piix4_smba & 1) == 0) {
		FUNC1(&PIIX4_dev->dev,
			"Auxiliary SMBus controller not enabled\n");
		return -ENODEV;
	}

	piix4_smba &= 0xfff0;
	if (piix4_smba == 0) {
		FUNC1(&PIIX4_dev->dev,
			"Auxiliary SMBus base address uninitialized\n");
		return -ENODEV;
	}

	if (FUNC0(piix4_smba, SMBIOSIZE, piix4_driver.name))
		return -ENODEV;

	if (!FUNC5(piix4_smba, SMBIOSIZE, piix4_driver.name)) {
		FUNC2(&PIIX4_dev->dev, "Auxiliary SMBus region 0x%x "
			"already in use!\n", piix4_smba);
		return -EBUSY;
	}

	FUNC3(&PIIX4_dev->dev,
		 "Auxiliary SMBus Host Controller at 0x%x\n",
		 piix4_smba);

	return piix4_smba;
}