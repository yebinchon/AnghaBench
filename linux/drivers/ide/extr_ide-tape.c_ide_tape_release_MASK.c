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
struct ide_tape_obj {int minor; int /*<<< orphan*/  valid; struct gendisk* disk; TYPE_1__* drive; } ;
struct gendisk {int /*<<< orphan*/ * private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * driver_data; int /*<<< orphan*/  dev_flags; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDETAPE_MAJOR ; 
 int /*<<< orphan*/  IDE_DFLAG_DSC_OVERLAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_tape_obj ; 
 int /*<<< orphan*/ ** idetape_devs ; 
 int /*<<< orphan*/  idetape_sysfs_class ; 
 int /*<<< orphan*/  FUNC3 (struct ide_tape_obj*) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*) ; 
 struct ide_tape_obj* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct ide_tape_obj *tape = FUNC5(dev, ide_tape_obj);
	ide_drive_t *drive = tape->drive;
	struct gendisk *g = tape->disk;

	FUNC0(tape->valid);

	drive->dev_flags &= ~IDE_DFLAG_DSC_OVERLAP;
	drive->driver_data = NULL;
	FUNC2(idetape_sysfs_class, FUNC1(IDETAPE_MAJOR, tape->minor));
	FUNC2(idetape_sysfs_class,
			FUNC1(IDETAPE_MAJOR, tape->minor + 128));
	idetape_devs[tape->minor] = NULL;
	g->private_data = NULL;
	FUNC4(g);
	FUNC3(tape);
}