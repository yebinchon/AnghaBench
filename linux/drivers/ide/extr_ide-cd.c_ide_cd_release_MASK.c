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
struct gendisk {int /*<<< orphan*/ * private_data; } ;
struct device {int dummy; } ;
struct cdrom_device_info {TYPE_1__* handle; } ;
struct cdrom_info {struct cdrom_info* toc; struct gendisk* disk; TYPE_1__* drive; struct cdrom_device_info devinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/ * prep_rq; int /*<<< orphan*/ * driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  cdrom_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdrom_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 struct cdrom_info* FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cdrom_device_info*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct cdrom_info *info = FUNC3(dev, cdrom_info);
	struct cdrom_device_info *devinfo = &info->devinfo;
	ide_drive_t *drive = info->drive;
	struct gendisk *g = info->disk;

	FUNC0(IDE_DBG_FUNC, "enter");

	FUNC1(info->toc);
	if (devinfo->handle == drive)
		FUNC4(devinfo);
	drive->driver_data = NULL;
	drive->prep_rq = NULL;
	g->private_data = NULL;
	FUNC2(g);
	FUNC1(info);
}