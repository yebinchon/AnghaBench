#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ide_tape_obj {struct gendisk* disk; } ;
struct ide_atapi_pc {int dummy; } ;
struct gendisk {int dummy; } ;
struct TYPE_6__ {struct ide_tape_obj* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,struct gendisk*,struct ide_atapi_pc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ide_atapi_pc*) ; 

__attribute__((used)) static int FUNC4(ide_drive_t *drive)
{
	struct ide_tape_obj *tape = drive->driver_data;
	struct gendisk *disk = tape->disk;
	struct ide_atapi_pc pc;
	int ret;

	FUNC0(IDE_DBG_FUNC, "enter");

	FUNC3(drive, &pc);
	ret = FUNC1(drive, disk, &pc, NULL, 0);
	if (ret)
		return ret;

	ret = FUNC2(drive);
	if (ret < 0)
		return ret;
	return 0;
}