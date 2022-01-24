#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int dev_flags; int /*<<< orphan*/  probed_capacity; int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int IDE_DFLAG_LBA ; 
 int IDE_DFLAG_NOHPA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(ide_drive_t *drive)
{
	u16 *id = drive->id;
	int lba48 = FUNC1(id);

	if ((drive->dev_flags & IDE_DFLAG_LBA) == 0 ||
	    FUNC0(id) == 0)
		return;

	/*
	 * according to the spec the SET MAX ADDRESS command shall be
	 * immediately preceded by a READ NATIVE MAX ADDRESS command
	 */
	if (!FUNC2(drive, lba48))
		return;

	if (FUNC3(drive, drive->probed_capacity, lba48))
		drive->dev_flags |= IDE_DFLAG_NOHPA; /* disable HPA on resume */
}