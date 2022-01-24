#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {int extra_base; scalar_t__ channel; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {scalar_t__ media; int dev_flags; scalar_t__ current_speed; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_DFLAG_LBA48 ; 
 scalar_t__ XFER_UDMA_2 ; 
 scalar_t__ ide_disk ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(ide_drive_t *drive)
{
	if (drive->media != ide_disk || (drive->dev_flags & IDE_DFLAG_LBA48)) {
		ide_hwif_t *hwif	= drive->hwif;
		unsigned long high_16	= hwif->extra_base - 16;
		unsigned long atapi_reg	= high_16 + (hwif->channel ? 0x24 : 0x20);
		u8 clock		= 0;

		FUNC3(0, atapi_reg); /* zero out extra */
		clock = FUNC1(high_16 + 0x11);
		FUNC2(clock & ~(hwif->channel ? 0x08:0x02), high_16 + 0x11);
	}
	if (drive->current_speed > XFER_UDMA_2)
		FUNC4(drive->hwif);
	return FUNC0(drive);
}