#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct thin_c {struct dm_dev* origin_dev; struct dm_dev* pool_dev; TYPE_3__* pool; int /*<<< orphan*/  td; int /*<<< orphan*/  list; int /*<<< orphan*/  can_destroy; int /*<<< orphan*/  refcount; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  sort_bio_list; int /*<<< orphan*/  retry_on_resume_list; int /*<<< orphan*/  deferred_bio_list; int /*<<< orphan*/  deferred_cells; int /*<<< orphan*/  lock; int /*<<< orphan*/  thin_md; } ;
struct mapped_device {int dummy; } ;
struct dm_thin_endio_hook {int dummy; } ;
struct dm_target {char* error; int num_flush_bios; int flush_supported; int per_io_data_size; int discards_supported; int num_discard_bios; int /*<<< orphan*/  table; struct thin_c* private; } ;
struct dm_dev {TYPE_1__* bdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_9__ {scalar_t__ discard_enabled; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_thins; scalar_t__ suspended; TYPE_2__ pf; int /*<<< orphan*/  sectors_per_block; int /*<<< orphan*/  pmd; } ;
struct TYPE_8__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PM_FAIL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dm_target*,char*,int /*<<< orphan*/ ,struct dm_dev**) ; 
 struct mapped_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_target*,struct dm_dev*) ; 
 int FUNC11 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_4__ dm_thin_pool_table ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct thin_c*) ; 
 struct thin_c* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (char*,unsigned long long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 () ; 

__attribute__((used)) static int FUNC28(struct dm_target *ti, unsigned argc, char **argv)
{
	int r;
	struct thin_c *tc;
	struct dm_dev *pool_dev, *origin_dev;
	struct mapped_device *pool_md;
	unsigned long flags;

	FUNC19(&dm_thin_pool_table.mutex);

	if (argc != 2 && argc != 3) {
		ti->error = "Invalid argument count";
		r = -EINVAL;
		goto out_unlock;
	}

	tc = ti->private = FUNC17(sizeof(*tc), GFP_KERNEL);
	if (!tc) {
		ti->error = "Out of memory";
		r = -ENOMEM;
		goto out_unlock;
	}
	tc->thin_md = FUNC12(ti->table);
	FUNC23(&tc->lock);
	FUNC0(&tc->deferred_cells);
	FUNC4(&tc->deferred_bio_list);
	FUNC4(&tc->retry_on_resume_list);
	tc->sort_bio_list = RB_ROOT;

	if (argc == 3) {
		if (!FUNC26(argv[0], argv[2])) {
			ti->error = "Error setting origin device";
			r = -EINVAL;
			goto bad_origin_dev;
		}

		r = FUNC5(ti, argv[2], FMODE_READ, &origin_dev);
		if (r) {
			ti->error = "Error opening origin device";
			goto bad_origin_dev;
		}
		tc->origin_dev = origin_dev;
	}

	r = FUNC5(ti, argv[0], FUNC13(ti->table), &pool_dev);
	if (r) {
		ti->error = "Error opening pool device";
		goto bad_pool_dev;
	}
	tc->pool_dev = pool_dev;

	if (FUNC21(argv[1], (unsigned long long *)&tc->dev_id, 0)) {
		ti->error = "Invalid device id";
		r = -EINVAL;
		goto bad_common;
	}

	pool_md = FUNC6(tc->pool_dev->bdev->bd_dev);
	if (!pool_md) {
		ti->error = "Couldn't get pool mapped device";
		r = -EINVAL;
		goto bad_common;
	}

	tc->pool = FUNC3(pool_md);
	if (!tc->pool) {
		ti->error = "Couldn't find pool object";
		r = -EINVAL;
		goto bad_pool_lookup;
	}
	FUNC2(tc->pool);

	if (FUNC14(tc->pool) == PM_FAIL) {
		ti->error = "Couldn't open thin device, Pool is in fail mode";
		r = -EINVAL;
		goto bad_pool;
	}

	r = FUNC8(tc->pool->pmd, tc->dev_id, &tc->td);
	if (r) {
		ti->error = "Couldn't open thin internal device";
		goto bad_pool;
	}

	r = FUNC11(ti, tc->pool->sectors_per_block);
	if (r)
		goto bad;

	ti->num_flush_bios = 1;
	ti->flush_supported = true;
	ti->per_io_data_size = sizeof(struct dm_thin_endio_hook);

	/* In case the pool supports discards, pass them on. */
	if (tc->pool->pf.discard_enabled) {
		ti->discards_supported = true;
		ti->num_discard_bios = 1;
	}

	FUNC20(&dm_thin_pool_table.mutex);

	FUNC24(&tc->pool->lock, flags);
	if (tc->pool->suspended) {
		FUNC25(&tc->pool->lock, flags);
		FUNC19(&dm_thin_pool_table.mutex); /* reacquire for __pool_dec */
		ti->error = "Unable to activate thin device while pool is suspended";
		r = -EINVAL;
		goto bad;
	}
	FUNC22(&tc->refcount, 1);
	FUNC15(&tc->can_destroy);
	FUNC18(&tc->list, &tc->pool->active_thins);
	FUNC25(&tc->pool->lock, flags);
	/*
	 * This synchronize_rcu() call is needed here otherwise we risk a
	 * wake_worker() call finding no bios to process (because the newly
	 * added tc isn't yet visible).  So this reduces latency since we
	 * aren't then dependent on the periodic commit to wake_worker().
	 */
	FUNC27();

	FUNC9(pool_md);

	return 0;

bad:
	FUNC7(tc->td);
bad_pool:
	FUNC1(tc->pool);
bad_pool_lookup:
	FUNC9(pool_md);
bad_common:
	FUNC10(ti, tc->pool_dev);
bad_pool_dev:
	if (tc->origin_dev)
		FUNC10(ti, tc->origin_dev);
bad_origin_dev:
	FUNC16(tc);
out_unlock:
	FUNC20(&dm_thin_pool_table.mutex);

	return r;
}