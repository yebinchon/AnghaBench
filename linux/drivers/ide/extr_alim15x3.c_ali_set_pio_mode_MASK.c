#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ide_timing {int dummy; } ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_8__ {scalar_t__ media; scalar_t__ dma_mode; scalar_t__ pio_mode; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int IDE_TIMING_8BIT ; 
 int IDE_TIMING_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,struct ide_timing*,int /*<<< orphan*/ ) ; 
 scalar_t__ ide_disk ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int ide_pci_clk ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,struct ide_timing*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ide_timing*,struct ide_timing*,struct ide_timing*,int) ; 

__attribute__((used)) static void FUNC5(ide_hwif_t *hwif, ide_drive_t *drive)
{
	ide_drive_t *pair = FUNC2(drive);
	int bus_speed = ide_pci_clk ? ide_pci_clk : 33;
	unsigned long T =  1000000 / bus_speed; /* PCI clock based */
	struct ide_timing t;

	FUNC3(drive, drive->pio_mode, &t, T, 1);
	if (pair) {
		struct ide_timing p;

		FUNC3(pair, pair->pio_mode, &p, T, 1);
		FUNC4(&p, &t, &t,
			IDE_TIMING_SETUP | IDE_TIMING_8BIT);
		if (pair->dma_mode) {
			FUNC3(pair, pair->dma_mode, &p, T, 1);
			FUNC4(&p, &t, &t,
				IDE_TIMING_SETUP | IDE_TIMING_8BIT);
		}
	}

	/* 
	 * PIO mode => ATA FIFO on, ATAPI FIFO off
	 */
	FUNC0(hwif, drive, (drive->media == ide_disk) ? 0x05 : 0x00);

	FUNC1(hwif, drive, &t, 0);
}