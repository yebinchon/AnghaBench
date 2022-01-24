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
struct inode {int dummy; } ;
struct ide_tape_obj {scalar_t__ chrdev_dir; scalar_t__ door_locked; int /*<<< orphan*/  disk; TYPE_1__* drive; } ;
struct file {struct ide_tape_obj* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  atapi_flags; struct ide_tape_obj* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ DOOR_LOCKED ; 
 scalar_t__ DOOR_UNLOCKED ; 
 scalar_t__ IDETAPE_DIR_NONE ; 
 scalar_t__ IDETAPE_DIR_READ ; 
 scalar_t__ IDETAPE_DIR_WRITE ; 
 int /*<<< orphan*/  IDE_AFLAG_BUSY ; 
 int /*<<< orphan*/  IDE_AFLAG_MEDIUM_PRESENT ; 
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ide_tape_obj*) ; 
 int /*<<< orphan*/  idetape_chrdev_mutex ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct file *filp)
{
	struct ide_tape_obj *tape = filp->private_data;
	ide_drive_t *drive = tape->drive;
	unsigned int minor = FUNC8(inode);

	FUNC9(&idetape_chrdev_mutex);

	tape = drive->driver_data;

	FUNC1(IDE_DBG_FUNC, "enter");

	if (tape->chrdev_dir == IDETAPE_DIR_WRITE)
		FUNC6(drive, minor);
	if (tape->chrdev_dir == IDETAPE_DIR_READ) {
		if (minor < 128)
			FUNC3(drive, 1);
	}

	if (minor < 128 && FUNC11(FUNC7(IDE_AFLAG_MEDIUM_PRESENT),
				    &drive->atapi_flags))
		(void) FUNC5(drive);

	if (tape->chrdev_dir == IDETAPE_DIR_NONE) {
		if (tape->door_locked == DOOR_LOCKED) {
			if (!FUNC2(drive, tape->disk, 0))
				tape->door_locked = DOOR_UNLOCKED;
		}
	}
	FUNC0(FUNC7(IDE_AFLAG_BUSY), &drive->atapi_flags);
	FUNC4(tape);

	FUNC10(&idetape_chrdev_mutex);

	return 0;
}