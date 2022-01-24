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
struct cdrom_info {int /*<<< orphan*/  devinfo; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 struct cdrom_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_cd_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct cdrom_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct block_device *bdev, fmode_t mode)
{
	struct cdrom_info *info;
	int rc = -ENXIO;

	FUNC1(bdev);

	FUNC4(&ide_cd_mutex);
	info = FUNC2(bdev->bd_disk);
	if (!info)
		goto out;

	rc = FUNC0(&info->devinfo, bdev, mode);
	if (rc < 0)
		FUNC3(info);
out:
	FUNC5(&ide_cd_mutex);
	return rc;
}