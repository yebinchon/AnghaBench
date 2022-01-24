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
struct TYPE_2__ {int far_copies; int /*<<< orphan*/  far_offset; } ;
struct r10conf {scalar_t__ dev_sectors; TYPE_1__ geo; } ;
struct mddev {scalar_t__ reshape_position; scalar_t__ array_sectors; scalar_t__ dev_sectors; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; int /*<<< orphan*/  recovery; scalar_t__ bitmap; scalar_t__ external_size; struct r10conf* private; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  FUNC0 (struct r10conf*,scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct mddev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mddev *mddev, sector_t sectors)
{
	/* Resize of 'far' arrays is not supported.
	 * For 'near' and 'offset' arrays we can set the
	 * number of sectors used to be an appropriate multiple
	 * of the chunk size.
	 * For 'offset', this is far_copies*chunksize.
	 * For 'near' the multiplier is the LCM of
	 * near_copies and raid_disks.
	 * So if far_copies > 1 && !far_offset, fail.
	 * Else find LCM(raid_disks, near_copy)*far_copies and
	 * multiply by chunk_size.  Then round to this number.
	 * This is mostly done by raid10_size()
	 */
	struct r10conf *conf = mddev->private;
	sector_t oldsize, size;

	if (mddev->reshape_position != MaxSector)
		return -EBUSY;

	if (conf->geo.far_copies > 1 && !conf->geo.far_offset)
		return -EINVAL;

	oldsize = FUNC3(mddev, 0, 0);
	size = FUNC3(mddev, sectors, 0);
	if (mddev->external_size &&
	    mddev->array_sectors > size)
		return -EINVAL;
	if (mddev->bitmap) {
		int ret = FUNC1(mddev->bitmap, size, 0, 0);
		if (ret)
			return ret;
	}
	FUNC2(mddev, size);
	if (sectors > mddev->dev_sectors &&
	    mddev->recovery_cp > oldsize) {
		mddev->recovery_cp = oldsize;
		FUNC4(MD_RECOVERY_NEEDED, &mddev->recovery);
	}
	FUNC0(conf, sectors);
	mddev->dev_sectors = conf->dev_sectors;
	mddev->resync_max_sectors = size;
	return 0;
}