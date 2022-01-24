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
struct raid10_info {int dummy; } ;
struct geom {int stride; int chunk_shift; scalar_t__ far_offset; } ;
struct r10conf {int copies; scalar_t__ reshape_progress; int dev_sectors; scalar_t__ reshape_safe; int /*<<< orphan*/  bio_split; int /*<<< orphan*/  tmppage; struct r10conf* mirrors; int /*<<< orphan*/  r10bio_pool; struct mddev* mddev; int /*<<< orphan*/  thread; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  bio_end_io_list; int /*<<< orphan*/  retry_list; int /*<<< orphan*/  device_lock; struct geom prev; struct geom geo; } ;
struct mddev {int raid_disks; scalar_t__ reshape_position; int /*<<< orphan*/  dev_sectors; int /*<<< orphan*/  delta_disks; int /*<<< orphan*/  new_layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_POOL_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct r10conf* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  NR_RAID_BIOS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r10conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  geo_new ; 
 int /*<<< orphan*/  geo_old ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct r10conf* FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct r10conf*) ; 
 struct r10conf* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct mddev*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct r10conf*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r10bio_pool_alloc ; 
 int /*<<< orphan*/  raid10d ; 
 int /*<<< orphan*/  rbio_pool_free ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct geom*,struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct r10conf *FUNC20(struct mddev *mddev)
{
	struct r10conf *conf = NULL;
	int err = -EINVAL;
	struct geom geo;
	int copies;

	copies = FUNC18(&geo, mddev, geo_new);

	if (copies == -2) {
		FUNC16("md/raid10:%s: chunk size must be at least PAGE_SIZE(%ld) and be a power of 2.\n",
			FUNC13(mddev), PAGE_SIZE);
		goto out;
	}

	if (copies < 2 || copies > mddev->raid_disks) {
		FUNC16("md/raid10:%s: unsupported raid10 layout: 0x%8x\n",
			FUNC13(mddev), mddev->new_layout);
		goto out;
	}

	err = -ENOMEM;
	conf = FUNC10(sizeof(struct r10conf), GFP_KERNEL);
	if (!conf)
		goto out;

	/* FIXME calc properly */
	conf->mirrors = FUNC8(mddev->raid_disks + FUNC11(0, -mddev->delta_disks),
				sizeof(struct raid10_info),
				GFP_KERNEL);
	if (!conf->mirrors)
		goto out;

	conf->tmppage = FUNC2(GFP_KERNEL);
	if (!conf->tmppage)
		goto out;

	conf->geo = geo;
	conf->copies = copies;
	err = FUNC15(&conf->r10bio_pool, NR_RAID_BIOS, r10bio_pool_alloc,
			   rbio_pool_free, conf);
	if (err)
		goto out;

	err = FUNC5(&conf->bio_split, BIO_POOL_SIZE, 0, 0);
	if (err)
		goto out;

	FUNC6(conf, mddev->dev_sectors);
	if (mddev->reshape_position == MaxSector) {
		conf->prev = conf->geo;
		conf->reshape_progress = MaxSector;
	} else {
		if (FUNC18(&conf->prev, mddev, geo_old) != conf->copies) {
			err = -EINVAL;
			goto out;
		}
		conf->reshape_progress = mddev->reshape_position;
		if (conf->prev.far_offset)
			conf->prev.stride = 1 << conf->prev.chunk_shift;
		else
			/* far_copies must be 1 */
			conf->prev.stride = conf->dev_sectors;
	}
	conf->reshape_safe = conf->reshape_progress;
	FUNC19(&conf->device_lock);
	FUNC1(&conf->retry_list);
	FUNC1(&conf->bio_end_io_list);

	FUNC19(&conf->resync_lock);
	FUNC7(&conf->wait_barrier);
	FUNC3(&conf->nr_pending, 0);

	err = -ENOMEM;
	conf->thread = FUNC12(raid10d, mddev, "raid10");
	if (!conf->thread)
		goto out;

	conf->mddev = mddev;
	return conf;

 out:
	if (conf) {
		FUNC14(&conf->r10bio_pool);
		FUNC9(conf->mirrors);
		FUNC17(conf->tmppage);
		FUNC4(&conf->bio_split);
		FUNC9(conf);
	}
	return FUNC0(err);
}