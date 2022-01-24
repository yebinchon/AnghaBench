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
struct r5l_log {scalar_t__ last_checkpoint; scalar_t__ device_size; TYPE_1__* rdev; } ;
struct mddev {int /*<<< orphan*/  sb_flags; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ data_offset; struct mddev* mddev; struct block_device* bdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (struct r5l_log*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct r5l_log *log,
	sector_t end)
{
	struct block_device *bdev = log->rdev->bdev;
	struct mddev *mddev;

	FUNC7(log, end);

	if (!FUNC2(FUNC1(bdev)))
		return;

	mddev = log->rdev->mddev;
	/*
	 * Discard could zero data, so before discard we must make sure
	 * superblock is updated to new log tail. Updating superblock (either
	 * directly call md_update_sb() or depend on md thread) must hold
	 * reconfig mutex. On the other hand, raid5_quiesce is called with
	 * reconfig_mutex hold. The first step of raid5_quiesce() is waitting
	 * for all IO finish, hence waitting for reclaim thread, while reclaim
	 * thread is calling this function and waitting for reconfig mutex. So
	 * there is a deadlock. We workaround this issue with a trylock.
	 * FIXME: we could miss discard if we can't take reconfig mutex
	 */
	FUNC8(&mddev->sb_flags, 0,
		FUNC0(MD_SB_CHANGE_DEVS) | FUNC0(MD_SB_CHANGE_PENDING));
	if (!FUNC5(mddev))
		return;
	FUNC4(mddev, 1);
	FUNC6(mddev);

	/* discard IO error really doesn't matter, ignore it */
	if (log->last_checkpoint < end) {
		FUNC3(bdev,
				log->last_checkpoint + log->rdev->data_offset,
				end - log->last_checkpoint, GFP_NOIO, 0);
	} else {
		FUNC3(bdev,
				log->last_checkpoint + log->rdev->data_offset,
				log->device_size - log->last_checkpoint,
				GFP_NOIO, 0);
		FUNC3(bdev, log->rdev->data_offset, end,
				GFP_NOIO, 0);
	}
}