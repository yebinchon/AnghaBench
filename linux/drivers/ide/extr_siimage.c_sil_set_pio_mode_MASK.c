#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_10__ {int host_flags; scalar_t__ channel; scalar_t__ hwif_data; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_11__ {scalar_t__ pio_mode; int dn; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_HFLAG_MMIO ; 
 scalar_t__ XFER_PIO_0 ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__ const) ; 
 unsigned long FUNC2 (TYPE_2__*,int) ; 
 unsigned long FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (struct pci_dev*,unsigned long) ; 
 scalar_t__ FUNC5 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,scalar_t__) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(ide_hwif_t *hwif, ide_drive_t *drive)
{
	static const u16 tf_speed[]   = { 0x328a, 0x2283, 0x1281, 0x10c3, 0x10c1 };
	static const u16 data_speed[] = { 0x328a, 0x2283, 0x1104, 0x10c3, 0x10c1 };

	struct pci_dev *dev	= FUNC8(hwif->dev);
	ide_drive_t *pair	= FUNC0(drive);
	u32 speedt		= 0;
	u16 speedp		= 0;
	unsigned long addr	= FUNC2(drive, 0x04);
	unsigned long tfaddr	= FUNC3(hwif,	0x02);
	unsigned long base	= (unsigned long)hwif->hwif_data;
	const u8 pio		= drive->pio_mode - XFER_PIO_0;
	u8 tf_pio		= pio;
	u8 mmio			= (hwif->host_flags & IDE_HFLAG_MMIO) ? 1 : 0;
	u8 addr_mask		= hwif->channel ? (mmio ? 0xF4 : 0x84)
						: (mmio ? 0xB4 : 0x80);
	u8 mode			= 0;
	u8 unit			= drive->dn & 1;

	/* trim *taskfile* PIO to the slowest of the master/slave */
	if (pair) {
		u8 pair_pio = pair->pio_mode - XFER_PIO_0;

		if (pair_pio < tf_pio)
			tf_pio = pair_pio;
	}

	/* cheat for now and use the docs */
	speedp = data_speed[pio];
	speedt = tf_speed[tf_pio];

	FUNC6(dev, speedp, addr);
	FUNC6(dev, speedt, tfaddr);

	/* now set up IORDY */
	speedp = FUNC4(dev, tfaddr - 2);
	speedp &= ~0x200;

	mode = FUNC5(dev, base + addr_mask);
	mode &= ~(unit ? 0x30 : 0x03);

	if (FUNC1(drive, pio)) {
		speedp |= 0x200;
		mode |= unit ? 0x10 : 0x01;
	}

	FUNC6(dev, speedp, tfaddr - 2);
	FUNC7(dev, mode, base + addr_mask);
}