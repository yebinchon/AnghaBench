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
typedef  int u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int revision; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ PCI_DEVICE_ID_AMD_HUDSON2_SMBUS ; 
 scalar_t__ PCI_DEVICE_ID_AMD_KERNCZ_SMBUS ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ PCI_VENDOR_ID_HYGON ; 
 scalar_t__ SB800_PIIX4_PORT_IDX ; 
 scalar_t__ SB800_PIIX4_PORT_IDX_ALT ; 
 scalar_t__ SB800_PIIX4_PORT_IDX_KERNCZ ; 
 int /*<<< orphan*/  SB800_PIIX4_PORT_IDX_MASK ; 
 int /*<<< orphan*/  SB800_PIIX4_PORT_IDX_MASK_KERNCZ ; 
 int SB800_PIIX4_PORT_IDX_SEL ; 
 int /*<<< orphan*/  SB800_PIIX4_PORT_IDX_SHIFT ; 
 int /*<<< orphan*/  SB800_PIIX4_PORT_IDX_SHIFT_KERNCZ ; 
 int SB800_PIIX4_SMB_IDX ; 
 int SMBIOSIZE ; 
 scalar_t__ FUNC0 (unsigned short,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 scalar_t__ force ; 
 scalar_t__ force_addr ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 TYPE_1__ piix4_driver ; 
 int /*<<< orphan*/  piix4_port_mask_sb800 ; 
 scalar_t__ piix4_port_sel_sb800 ; 
 int /*<<< orphan*/  piix4_port_shift_sb800 ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned short,int,char*) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *PIIX4_dev,
			     const struct pci_device_id *id, u8 aux)
{
	unsigned short piix4_smba;
	u8 smba_en_lo, smba_en_hi, smb_en, smb_en_status, port_sel;
	u8 i2ccfg, i2ccfg_offset = 0x10;

	/* SB800 and later SMBus does not support forcing address */
	if (force || force_addr) {
		FUNC2(&PIIX4_dev->dev, "SMBus does not support "
			"forcing address!\n");
		return -EINVAL;
	}

	/* Determine the address of the SMBus areas */
	if ((PIIX4_dev->vendor == PCI_VENDOR_ID_AMD &&
	     PIIX4_dev->device == PCI_DEVICE_ID_AMD_HUDSON2_SMBUS &&
	     PIIX4_dev->revision >= 0x41) ||
	    (PIIX4_dev->vendor == PCI_VENDOR_ID_AMD &&
	     PIIX4_dev->device == PCI_DEVICE_ID_AMD_KERNCZ_SMBUS &&
	     PIIX4_dev->revision >= 0x49) ||
	    (PIIX4_dev->vendor == PCI_VENDOR_ID_HYGON &&
	     PIIX4_dev->device == PCI_DEVICE_ID_AMD_KERNCZ_SMBUS))
		smb_en = 0x00;
	else
		smb_en = (aux) ? 0x28 : 0x2c;

	if (!FUNC7(SB800_PIIX4_SMB_IDX, 2, "sb800_piix4_smb")) {
		FUNC2(&PIIX4_dev->dev,
			"SMB base address index region 0x%x already in use.\n",
			SB800_PIIX4_SMB_IDX);
		return -EBUSY;
	}

	FUNC5(smb_en, SB800_PIIX4_SMB_IDX);
	smba_en_lo = FUNC4(SB800_PIIX4_SMB_IDX + 1);
	FUNC5(smb_en + 1, SB800_PIIX4_SMB_IDX);
	smba_en_hi = FUNC4(SB800_PIIX4_SMB_IDX + 1);

	FUNC6(SB800_PIIX4_SMB_IDX, 2);

	if (!smb_en) {
		smb_en_status = smba_en_lo & 0x10;
		piix4_smba = smba_en_hi << 8;
		if (aux)
			piix4_smba |= 0x20;
	} else {
		smb_en_status = smba_en_lo & 0x01;
		piix4_smba = ((smba_en_hi << 8) | smba_en_lo) & 0xffe0;
	}

	if (!smb_en_status) {
		FUNC2(&PIIX4_dev->dev,
			"SMBus Host Controller not enabled!\n");
		return -ENODEV;
	}

	if (FUNC0(piix4_smba, SMBIOSIZE, piix4_driver.name))
		return -ENODEV;

	if (!FUNC8(piix4_smba, SMBIOSIZE, piix4_driver.name)) {
		FUNC2(&PIIX4_dev->dev, "SMBus region 0x%x already in use!\n",
			piix4_smba);
		return -EBUSY;
	}

	/* Aux SMBus does not support IRQ information */
	if (aux) {
		FUNC3(&PIIX4_dev->dev,
			 "Auxiliary SMBus Host Controller at 0x%x\n",
			 piix4_smba);
		return piix4_smba;
	}

	/* Request the SMBus I2C bus config region */
	if (!FUNC8(piix4_smba + i2ccfg_offset, 1, "i2ccfg")) {
		FUNC2(&PIIX4_dev->dev, "SMBus I2C bus config region "
			"0x%x already in use!\n", piix4_smba + i2ccfg_offset);
		FUNC6(piix4_smba, SMBIOSIZE);
		return -EBUSY;
	}
	i2ccfg = FUNC4(piix4_smba + i2ccfg_offset);
	FUNC6(piix4_smba + i2ccfg_offset, 1);

	if (i2ccfg & 1)
		FUNC1(&PIIX4_dev->dev, "Using IRQ for SMBus\n");
	else
		FUNC1(&PIIX4_dev->dev, "Using SMI# for SMBus\n");

	FUNC3(&PIIX4_dev->dev,
		 "SMBus Host Controller at 0x%x, revision %d\n",
		 piix4_smba, i2ccfg >> 4);

	/* Find which register is used for port selection */
	if (PIIX4_dev->vendor == PCI_VENDOR_ID_AMD ||
	    PIIX4_dev->vendor == PCI_VENDOR_ID_HYGON) {
		if (PIIX4_dev->device == PCI_DEVICE_ID_AMD_KERNCZ_SMBUS ||
		    (PIIX4_dev->device == PCI_DEVICE_ID_AMD_HUDSON2_SMBUS &&
		     PIIX4_dev->revision >= 0x1F)) {
			piix4_port_sel_sb800 = SB800_PIIX4_PORT_IDX_KERNCZ;
			piix4_port_mask_sb800 = SB800_PIIX4_PORT_IDX_MASK_KERNCZ;
			piix4_port_shift_sb800 = SB800_PIIX4_PORT_IDX_SHIFT_KERNCZ;
		} else {
			piix4_port_sel_sb800 = SB800_PIIX4_PORT_IDX_ALT;
			piix4_port_mask_sb800 = SB800_PIIX4_PORT_IDX_MASK;
			piix4_port_shift_sb800 = SB800_PIIX4_PORT_IDX_SHIFT;
		}
	} else {
		if (!FUNC7(SB800_PIIX4_SMB_IDX, 2,
					  "sb800_piix4_smb")) {
			FUNC6(piix4_smba, SMBIOSIZE);
			return -EBUSY;
		}

		FUNC5(SB800_PIIX4_PORT_IDX_SEL, SB800_PIIX4_SMB_IDX);
		port_sel = FUNC4(SB800_PIIX4_SMB_IDX + 1);
		piix4_port_sel_sb800 = (port_sel & 0x01) ?
				       SB800_PIIX4_PORT_IDX_ALT :
				       SB800_PIIX4_PORT_IDX;
		piix4_port_mask_sb800 = SB800_PIIX4_PORT_IDX_MASK;
		piix4_port_shift_sb800 = SB800_PIIX4_PORT_IDX_SHIFT;
		FUNC6(SB800_PIIX4_SMB_IDX, 2);
	}

	FUNC3(&PIIX4_dev->dev,
		 "Using register 0x%02x for SMBus port selection\n",
		 (unsigned int)piix4_port_sel_sb800);

	return piix4_smba;
}