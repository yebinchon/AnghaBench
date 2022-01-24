#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct dmz_target {TYPE_1__* ddev; struct dmz_dev* dev; } ;
struct dmz_dev {int capacity; TYPE_3__* bdev; int /*<<< orphan*/  nr_zones; scalar_t__ zone_nr_blocks; void* zone_nr_blocks_shift; scalar_t__ zone_nr_sectors; void* zone_nr_sectors_shift; int /*<<< orphan*/  name; } ;
struct dm_target {char* error; int len; scalar_t__ begin; int /*<<< orphan*/  table; struct dmz_target* private; } ;
typedef  int sector_t ;
struct TYPE_8__ {int /*<<< orphan*/  bd_inode; } ;
struct TYPE_7__ {TYPE_3__* bdev; } ;

/* Variables and functions */
 scalar_t__ BLK_ZONED_NONE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SECTOR_SHIFT ; 
 struct request_queue* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct dm_target*,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_target*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dmz_dev*) ; 
 struct dmz_dev* FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct dm_target *ti, char *path)
{
	struct dmz_target *dmz = ti->private;
	struct request_queue *q;
	struct dmz_dev *dev;
	sector_t aligned_capacity;
	int ret;

	/* Get the target device */
	ret = FUNC5(ti, path, FUNC7(ti->table), &dmz->ddev);
	if (ret) {
		ti->error = "Get target device failed";
		dmz->ddev = NULL;
		return ret;
	}

	dev = FUNC12(sizeof(struct dmz_dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	dev->bdev = dmz->ddev->bdev;
	(void)FUNC2(dev->bdev, dev->name);

	if (FUNC1(dev->bdev) == BLK_ZONED_NONE) {
		ti->error = "Not a zoned block device";
		ret = -EINVAL;
		goto err;
	}

	q = FUNC0(dev->bdev);
	dev->capacity = FUNC9(dev->bdev->bd_inode) >> SECTOR_SHIFT;
	aligned_capacity = dev->capacity &
				~((sector_t)FUNC3(q) - 1);
	if (ti->begin ||
	    ((ti->len != dev->capacity) && (ti->len != aligned_capacity))) {
		ti->error = "Partial mapping not supported";
		ret = -EINVAL;
		goto err;
	}

	dev->zone_nr_sectors = FUNC3(q);
	dev->zone_nr_sectors_shift = FUNC10(dev->zone_nr_sectors);

	dev->zone_nr_blocks = FUNC8(dev->zone_nr_sectors);
	dev->zone_nr_blocks_shift = FUNC10(dev->zone_nr_blocks);

	dev->nr_zones = FUNC4(dev->bdev);

	dmz->dev = dev;

	return 0;
err:
	FUNC6(ti, dmz->ddev);
	FUNC11(dev);

	return ret;
}