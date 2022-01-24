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
struct gendisk {int dummy; } ;
struct cdrom_info {int /*<<< orphan*/  devinfo; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  cdrom_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_cd_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct cdrom_info*) ; 
 struct cdrom_info* FUNC2 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gendisk *disk, fmode_t mode)
{
	struct cdrom_info *info = FUNC2(disk, cdrom_info);

	FUNC3(&ide_cd_mutex);
	FUNC0(&info->devinfo, mode);

	FUNC1(info);
	FUNC4(&ide_cd_mutex);
}