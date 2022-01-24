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
struct r5conf {scalar_t__ chunk_sectors; } ;
struct mddev {scalar_t__ array_sectors; scalar_t__ dev_sectors; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; int /*<<< orphan*/  recovery; scalar_t__ bitmap; scalar_t__ external_size; int /*<<< orphan*/  raid_disks; struct r5conf* private; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct r5conf*) ; 
 scalar_t__ FUNC3 (struct r5conf*) ; 
 scalar_t__ FUNC4 (struct mddev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mddev *mddev, sector_t sectors)
{
	/* no resync is happening, and there is enough space
	 * on all devices, so we can resize.
	 * We need to make sure resync covers any new space.
	 * If the array is shrinking we should possibly wait until
	 * any io in the removed space completes, but it hardly seems
	 * worth it.
	 */
	sector_t newsize;
	struct r5conf *conf = mddev->private;

	if (FUNC2(conf) || FUNC3(conf))
		return -EINVAL;
	sectors &= ~((sector_t)conf->chunk_sectors - 1);
	newsize = FUNC4(mddev, sectors, mddev->raid_disks);
	if (mddev->external_size &&
	    mddev->array_sectors > newsize)
		return -EINVAL;
	if (mddev->bitmap) {
		int ret = FUNC0(mddev->bitmap, sectors, 0, 0);
		if (ret)
			return ret;
	}
	FUNC1(mddev, newsize);
	if (sectors > mddev->dev_sectors &&
	    mddev->recovery_cp > mddev->dev_sectors) {
		mddev->recovery_cp = mddev->dev_sectors;
		FUNC5(MD_RECOVERY_NEEDED, &mddev->recovery);
	}
	mddev->dev_sectors = sectors;
	mddev->resync_max_sectors = sectors;
	return 0;
}