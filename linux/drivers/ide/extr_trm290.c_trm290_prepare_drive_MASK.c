#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {int select_data; int channel; scalar_t__ config_data; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_DFLAG_PRESENT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5 (ide_drive_t *drive, unsigned int use_dma)
{
	ide_hwif_t *hwif = drive->hwif;
	u16 reg = 0;
	unsigned long flags;

	/* select PIO or DMA */
	reg = use_dma ? (0x21 | 0x82) : (0x21 & ~0x82);

	FUNC2(flags);

	if (reg != hwif->select_data) {
		hwif->select_data = reg;
		/* set PIO/DMA */
		FUNC3(0x51 | (hwif->channel << 3), hwif->config_data + 1);
		FUNC4(reg & 0xff, hwif->config_data);
	}

	/* enable IRQ if not probing */
	if (drive->dev_flags & IDE_DFLAG_PRESENT) {
		reg = FUNC0(hwif->config_data + 3);
		reg &= 0x13;
		reg &= ~(1 << hwif->channel);
		FUNC4(reg, hwif->config_data + 3);
	}

	FUNC1(flags);
}