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
struct ide_disk_obj {int /*<<< orphan*/  dev; int /*<<< orphan*/  driver; struct gendisk* disk; } ;
struct gendisk {int dummy; } ;
struct TYPE_7__ {TYPE_1__* disk_ops; struct ide_disk_obj* driver_data; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* flush ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ide_disk_ref_mutex ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(ide_drive_t *drive)
{
	struct ide_disk_obj *idkp = drive->driver_data;
	struct gendisk *g = idkp->disk;

	FUNC2(drive, idkp->driver);
	FUNC1(&idkp->dev);
	FUNC0(g);
	drive->disk_ops->flush(drive);

	FUNC3(&ide_disk_ref_mutex);
	FUNC5(&idkp->dev);
	FUNC4(&ide_disk_ref_mutex);
}