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
struct raid1_info {int raid_disks; struct md_rdev* rdev; struct mddev* mddev; } ;
struct r1conf {int raid_disks; int /*<<< orphan*/  device_lock; struct raid1_info* poolinfo; struct raid1_info* mirrors; int /*<<< orphan*/  r1bio_pool; } ;
struct pool_info {int raid_disks; struct md_rdev* rdev; struct mddev* mddev; } ;
struct mddev {scalar_t__ chunk_sectors; scalar_t__ new_chunk_sectors; scalar_t__ layout; scalar_t__ new_layout; scalar_t__ level; scalar_t__ new_level; int raid_disks; int delta_disks; int degraded; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; struct r1conf* private; } ;
struct md_rdev {int raid_disk; } ;
typedef  int /*<<< orphan*/  oldpool ;
typedef  int /*<<< orphan*/  newpool ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  NR_RAID_BIOS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r1conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct raid1_info*) ; 
 struct raid1_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct raid1_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct raid1_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  r1bio_pool_alloc ; 
 int /*<<< orphan*/  rbio_pool_free ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC18 (struct r1conf*) ; 

__attribute__((used)) static int FUNC19(struct mddev *mddev)
{
	/* We need to:
	 * 1/ resize the r1bio_pool
	 * 2/ resize conf->mirrors
	 *
	 * We allocate a new r1bio_pool if we can.
	 * Then raise a device barrier and wait until all IO stops.
	 * Then resize conf->mirrors and swap in the new r1bio pool.
	 *
	 * At the same time, we "pack" the devices so that all the missing
	 * devices have the higher raid_disk numbers.
	 */
	mempool_t newpool, oldpool;
	struct pool_info *newpoolinfo;
	struct raid1_info *newmirrors;
	struct r1conf *conf = mddev->private;
	int cnt, raid_disks;
	unsigned long flags;
	int d, d2;
	int ret;

	FUNC11(&newpool, 0, sizeof(newpool));
	FUNC11(&oldpool, 0, sizeof(oldpool));

	/* Cannot change chunk_size, layout, or level */
	if (mddev->chunk_sectors != mddev->new_chunk_sectors ||
	    mddev->layout != mddev->new_layout ||
	    mddev->level != mddev->new_level) {
		mddev->new_chunk_sectors = mddev->chunk_sectors;
		mddev->new_layout = mddev->layout;
		mddev->new_level = mddev->level;
		return -EINVAL;
	}

	if (!FUNC7(mddev))
		FUNC5(mddev);

	raid_disks = mddev->raid_disks + mddev->delta_disks;

	if (raid_disks < conf->raid_disks) {
		cnt=0;
		for (d= 0; d < conf->raid_disks; d++)
			if (conf->mirrors[d].rdev)
				cnt++;
		if (cnt > raid_disks)
			return -EBUSY;
	}

	newpoolinfo = FUNC3(sizeof(*newpoolinfo), GFP_KERNEL);
	if (!newpoolinfo)
		return -ENOMEM;
	newpoolinfo->mddev = mddev;
	newpoolinfo->raid_disks = raid_disks * 2;

	ret = FUNC10(&newpool, NR_RAID_BIOS, r1bio_pool_alloc,
			   rbio_pool_free, newpoolinfo);
	if (ret) {
		FUNC2(newpoolinfo);
		return ret;
	}
	newmirrors = FUNC4(FUNC0(sizeof(struct raid1_info),
					 raid_disks, 2),
			     GFP_KERNEL);
	if (!newmirrors) {
		FUNC2(newpoolinfo);
		FUNC9(&newpool);
		return -ENOMEM;
	}

	FUNC1(conf, 0);

	/* ok, everything is stopped */
	oldpool = conf->r1bio_pool;
	conf->r1bio_pool = newpool;

	for (d = d2 = 0; d < conf->raid_disks; d++) {
		struct md_rdev *rdev = conf->mirrors[d].rdev;
		if (rdev && rdev->raid_disk != d2) {
			FUNC17(mddev, rdev);
			rdev->raid_disk = d2;
			FUNC17(mddev, rdev);
			if (FUNC16(mddev, rdev))
				FUNC12("md/raid1:%s: cannot register rd%d\n",
					FUNC8(mddev), rdev->raid_disk);
		}
		if (rdev)
			newmirrors[d2++].rdev = rdev;
	}
	FUNC2(conf->mirrors);
	conf->mirrors = newmirrors;
	FUNC2(conf->poolinfo);
	conf->poolinfo = newpoolinfo;

	FUNC14(&conf->device_lock, flags);
	mddev->degraded += (raid_disks - conf->raid_disks);
	FUNC15(&conf->device_lock, flags);
	conf->raid_disks = mddev->raid_disks = raid_disks;
	mddev->delta_disks = 0;

	FUNC18(conf);

	FUNC13(MD_RECOVERY_RECOVER, &mddev->recovery);
	FUNC13(MD_RECOVERY_NEEDED, &mddev->recovery);
	FUNC6(mddev->thread);

	FUNC9(&oldpool);
	return 0;
}