#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  ide_disk_ioctl_mutex ; 
 int /*<<< orphan*/  ide_disk_ioctl_settings ; 
 int FUNC1 (int /*<<< orphan*/ *,struct block_device*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(ide_drive_t *drive, struct block_device *bdev, fmode_t mode,
		   unsigned int cmd, unsigned long arg)
{
	int err;

	FUNC2(&ide_disk_ioctl_mutex);
	err = FUNC1(drive, bdev, cmd, arg, ide_disk_ioctl_settings);
	if (err != -EOPNOTSUPP)
		goto out;

	err = FUNC0(drive, bdev, cmd, arg);
out:
	FUNC3(&ide_disk_ioctl_mutex);
	return err;
}