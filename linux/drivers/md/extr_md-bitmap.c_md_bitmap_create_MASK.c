#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ daemon_sleep; int /*<<< orphan*/  chunksize; int /*<<< orphan*/  external; scalar_t__ offset; struct file* file; } ;
struct TYPE_5__ {struct kernfs_node* sd; } ;
struct mddev {TYPE_3__ bitmap_info; int /*<<< orphan*/  flags; TYPE_1__ kobj; int /*<<< orphan*/  resync_max_sectors; } ;
struct kernfs_node {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {struct file* file; } ;
struct bitmap {int cluster_slot; int /*<<< orphan*/  flags; TYPE_4__ counts; int /*<<< orphan*/  daemon_lastrun; TYPE_2__ storage; int /*<<< orphan*/ * sysfs_can_clear; struct mddev* mddev; int /*<<< orphan*/  behind_wait; int /*<<< orphan*/  overflow_wait; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  pending_writes; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  bitmap_super_t ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_WRITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 struct bitmap* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MD_ARRAY_FIRST_USE ; 
 int /*<<< orphan*/  MD_HAS_JOURNAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct bitmap* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bitmap*) ; 
 int FUNC9 (struct bitmap*) ; 
 int FUNC10 (struct bitmap*) ; 
 int FUNC11 (struct bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (struct kernfs_node*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct kernfs_node*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct file*,int) ; 

struct bitmap *FUNC21(struct mddev *mddev, int slot)
{
	struct bitmap *bitmap;
	sector_t blocks = mddev->resync_max_sectors;
	struct file *file = mddev->bitmap_info.file;
	int err;
	struct kernfs_node *bm = NULL;

	FUNC1(sizeof(bitmap_super_t) != 256);

	FUNC0(file && mddev->bitmap_info.offset);

	if (FUNC19(MD_HAS_JOURNAL, &mddev->flags)) {
		FUNC14("md/raid:%s: array with journal cannot have bitmap\n",
			  FUNC12(mddev));
		return FUNC2(-EBUSY);
	}

	bitmap = FUNC7(sizeof(*bitmap), GFP_KERNEL);
	if (!bitmap)
		return FUNC2(-ENOMEM);

	FUNC15(&bitmap->counts.lock);
	FUNC3(&bitmap->pending_writes, 0);
	FUNC6(&bitmap->write_wait);
	FUNC6(&bitmap->overflow_wait);
	FUNC6(&bitmap->behind_wait);

	bitmap->mddev = mddev;
	bitmap->cluster_slot = slot;

	if (mddev->kobj.sd)
		bm = FUNC16(mddev->kobj.sd, "bitmap");
	if (bm) {
		bitmap->sysfs_can_clear = FUNC16(bm, "can_clear");
		FUNC17(bm);
	} else
		bitmap->sysfs_can_clear = NULL;

	bitmap->storage.file = file;
	if (file) {
		FUNC5(file);
		/* As future accesses to this file will use bmap,
		 * and bypass the page cache, we must sync the file
		 * first.
		 */
		FUNC20(file, 1);
	}
	/* read superblock from bitmap file (this sets mddev->bitmap_info.chunksize) */
	if (!mddev->bitmap_info.external) {
		/*
		 * If 'MD_ARRAY_FIRST_USE' is set, then device-mapper is
		 * instructing us to create a new on-disk bitmap instance.
		 */
		if (FUNC18(MD_ARRAY_FIRST_USE, &mddev->flags))
			err = FUNC9(bitmap);
		else
			err = FUNC10(bitmap);
	} else {
		err = 0;
		if (mddev->bitmap_info.chunksize == 0 ||
		    mddev->bitmap_info.daemon_sleep == 0)
			/* chunksize and time_base need to be
			 * set first. */
			err = -EINVAL;
	}
	if (err)
		goto error;

	bitmap->daemon_lastrun = jiffies;
	err = FUNC11(bitmap, blocks, mddev->bitmap_info.chunksize, 1);
	if (err)
		goto error;

	FUNC13("created bitmap (%lu pages) for device %s\n",
		 bitmap->counts.pages, FUNC4(bitmap));

	err = FUNC19(BITMAP_WRITE_ERROR, &bitmap->flags) ? -EIO : 0;
	if (err)
		goto error;

	return bitmap;
 error:
	FUNC8(bitmap);
	return FUNC2(err);
}