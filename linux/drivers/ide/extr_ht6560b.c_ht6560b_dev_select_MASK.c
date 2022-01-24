#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_7__ {int /*<<< orphan*/  device_addr; int /*<<< orphan*/  status_addr; } ;
struct TYPE_8__ {TYPE_1__ io_ports; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_9__ {scalar_t__ media; int dev_flags; int select; int /*<<< orphan*/  name; TYPE_2__* hwif; } ;
typedef  TYPE_3__ ide_drive_t ;

/* Variables and functions */
 int ATA_DEVICE_OBS ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  HT_CONFIG_PORT ; 
 int HT_PREFETCH_MODE ; 
 int FUNC1 (TYPE_3__*) ; 
 int IDE_DFLAG_PRESENT ; 
 scalar_t__ ide_disk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(ide_drive_t *drive)
{
	ide_hwif_t *hwif = drive->hwif;
	unsigned long flags;
	static u8 current_select = 0;
	static u8 current_timing = 0;
	u8 select, timing;
	
	FUNC4(flags);

	select = FUNC0(drive);
	timing = FUNC1(drive);

	/*
	 * Need to enforce prefetch sometimes because otherwise
	 * it'll hang (hard).
	 */
	if (drive->media != ide_disk ||
	    (drive->dev_flags & IDE_DFLAG_PRESENT) == 0)
		select |= HT_PREFETCH_MODE;

	if (select != current_select || timing != current_timing) {
		current_select = select;
		current_timing = timing;
		(void)FUNC2(HT_CONFIG_PORT);
		(void)FUNC2(HT_CONFIG_PORT);
		(void)FUNC2(HT_CONFIG_PORT);
		(void)FUNC2(HT_CONFIG_PORT);
		FUNC5(select, HT_CONFIG_PORT);
		/*
		 * Set timing for this drive:
		 */
		FUNC5(timing, hwif->io_ports.device_addr);
		(void)FUNC2(hwif->io_ports.status_addr);
#ifdef DEBUG
		printk("ht6560b: %s: select=%#x timing=%#x\n",
			drive->name, select, timing);
#endif
	}
	FUNC3(flags);

	FUNC5(drive->select | ATA_DEVICE_OBS, hwif->io_ports.device_addr);
}