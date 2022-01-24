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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct ide_timing {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_11__ {int dma_mode; int pio_mode; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_TIMING_8BIT ; 
 int IDE_TIMING_SETUP ; 
 int const XFER_UDMA_0 ; 
 int const XFER_UDMA_3 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*,struct ide_timing*,int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int ide_pci_clk ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,struct ide_timing*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ide_timing*,struct ide_timing*,struct ide_timing*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ide_hwif_t *hwif, ide_drive_t *drive)
{
	static u8 udma_timing[7] = { 0xC, 0xB, 0xA, 0x9, 0x8, 0xF, 0xD };
	struct pci_dev *dev	= FUNC6(hwif->dev);
	ide_drive_t *pair	= FUNC1(drive);
	int bus_speed		= ide_pci_clk ? ide_pci_clk : 33;
	unsigned long T		=  1000000 / bus_speed; /* PCI clock based */
	const u8 speed		= drive->dma_mode;
	u8 tmpbyte		= 0x00;
	struct ide_timing t;

	if (speed < XFER_UDMA_0) {
		FUNC2(drive, drive->dma_mode, &t, T, 1);
		if (pair) {
			struct ide_timing p;

			FUNC2(pair, pair->pio_mode, &p, T, 1);
			FUNC3(&p, &t, &t,
				IDE_TIMING_SETUP | IDE_TIMING_8BIT);
			if (pair->dma_mode) {
				FUNC2(pair, pair->dma_mode,
						&p, T, 1);
				FUNC3(&p, &t, &t,
					IDE_TIMING_SETUP | IDE_TIMING_8BIT);
			}
		}
		FUNC0(hwif, drive, &t, 0);
	} else {
		FUNC0(hwif, drive, NULL,
				udma_timing[speed - XFER_UDMA_0]);
		if (speed >= XFER_UDMA_3) {
			FUNC4(dev, 0x4b, &tmpbyte);
			tmpbyte |= 1;
			FUNC5(dev, 0x4b, tmpbyte);
		}
	}
}