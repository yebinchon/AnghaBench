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
struct cdrom_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  drive; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdrom_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct cdrom_info* FUNC2 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idecd_ref_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cdrom_info *FUNC5(struct gendisk *disk)
{
	struct cdrom_info *cd = NULL;

	FUNC3(&idecd_ref_mutex);
	cd = FUNC2(disk, cdrom_info);
	if (cd) {
		if (FUNC1(cd->drive))
			cd = NULL;
		else
			FUNC0(&cd->dev);

	}
	FUNC4(&idecd_ref_mutex);
	return cd;
}