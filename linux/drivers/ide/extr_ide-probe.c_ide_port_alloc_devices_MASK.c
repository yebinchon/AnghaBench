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
struct TYPE_6__ {TYPE_2__** devices; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_DRIVES ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(ide_hwif_t *hwif, int node)
{
	ide_drive_t *drive;
	int i;

	for (i = 0; i < MAX_DRIVES; i++) {
		drive = FUNC2(sizeof(*drive), GFP_KERNEL, node);
		if (drive == NULL)
			goto out_nomem;

		/*
		 * In order to keep things simple we have an id
		 * block for all drives at all times. If the device
		 * is pre ATA or refuses ATA/ATAPI identify we
		 * will add faked data to this.
		 *
		 * Also note that 0 everywhere means "can't do X"
		 */
		drive->id = FUNC2(SECTOR_SIZE, GFP_KERNEL, node);
		if (drive->id == NULL)
			goto out_free_drive;

		hwif->devices[i] = drive;
	}
	return 0;

out_free_drive:
	FUNC1(drive);
out_nomem:
	FUNC0(hwif);
	return -ENOMEM;
}