#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pool_features {scalar_t__ mode; scalar_t__ discard_enabled; scalar_t__ discard_passdown; } ;
struct TYPE_6__ {int /*<<< orphan*/  congested_fn; } ;
struct pool_c {TYPE_3__ callbacks; struct pool* pool; struct pool_features requested_pf; struct pool_features adjusted_pf; scalar_t__ low_water_blocks; struct dm_dev* data_dev; struct dm_dev* metadata_dev; struct dm_target* ti; } ;
struct TYPE_4__ {scalar_t__ discard_enabled; } ;
struct pool {int /*<<< orphan*/  pmd; TYPE_1__ pf; } ;
struct dm_target {char* error; int num_flush_bios; int num_discard_bios; int discards_supported; int /*<<< orphan*/  table; struct pool_c* private; } ;
struct dm_dev {int /*<<< orphan*/  bdev; } ;
struct dm_arg_set {unsigned int argc; char** argv; } ;
typedef  int fmode_t ;
typedef  scalar_t__ dm_block_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned long DATA_DEV_BLOCK_SIZE_MAX_SECTORS ; 
 unsigned long DATA_DEV_BLOCK_SIZE_MIN_SECTORS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct pool*) ; 
 scalar_t__ PM_READ_ONLY ; 
 int FUNC1 (struct pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*) ; 
 struct pool* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pool_c*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_arg_set*,int) ; 
 int FUNC6 (struct dm_target*,char*,int,struct dm_dev**) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pool*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_target*,struct dm_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__ dm_thin_pool_table ; 
 int /*<<< orphan*/  FUNC11 (struct pool_c*) ; 
 scalar_t__ FUNC12 (char*,int,unsigned long*) ; 
 scalar_t__ FUNC13 (char*,int,unsigned long long*) ; 
 struct pool_c* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metadata_low_callback ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct dm_arg_set*,struct pool_features*,struct dm_target*) ; 
 int /*<<< orphan*/  FUNC18 (struct pool_features*) ; 
 int /*<<< orphan*/  pool_is_congested ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct dm_target *ti, unsigned argc, char **argv)
{
	int r, pool_created = 0;
	struct pool_c *pt;
	struct pool *pool;
	struct pool_features pf;
	struct dm_arg_set as;
	struct dm_dev *data_dev;
	unsigned long block_size;
	dm_block_t low_water_blocks;
	struct dm_dev *metadata_dev;
	fmode_t metadata_mode;

	/*
	 * FIXME Remove validation from scope of lock.
	 */
	FUNC15(&dm_thin_pool_table.mutex);

	if (argc < 4) {
		ti->error = "Invalid argument count";
		r = -EINVAL;
		goto out_unlock;
	}

	as.argc = argc;
	as.argv = argv;

	/* make sure metadata and data are different devices */
	if (!FUNC19(argv[0], argv[1])) {
		ti->error = "Error setting metadata or data device";
		r = -EINVAL;
		goto out_unlock;
	}

	/*
	 * Set default pool features.
	 */
	FUNC18(&pf);

	FUNC5(&as, 4);
	r = FUNC17(&as, &pf, ti);
	if (r)
		goto out_unlock;

	metadata_mode = FMODE_READ | ((pf.mode == PM_READ_ONLY) ? 0 : FMODE_WRITE);
	r = FUNC6(ti, argv[0], metadata_mode, &metadata_dev);
	if (r) {
		ti->error = "Error opening metadata block device";
		goto out_unlock;
	}
	FUNC20(metadata_dev->bdev);

	r = FUNC6(ti, argv[1], FMODE_READ | FMODE_WRITE, &data_dev);
	if (r) {
		ti->error = "Error getting data device";
		goto out_metadata;
	}

	if (FUNC12(argv[2], 10, &block_size) || !block_size ||
	    block_size < DATA_DEV_BLOCK_SIZE_MIN_SECTORS ||
	    block_size > DATA_DEV_BLOCK_SIZE_MAX_SECTORS ||
	    block_size & (DATA_DEV_BLOCK_SIZE_MIN_SECTORS - 1)) {
		ti->error = "Invalid block size";
		r = -EINVAL;
		goto out;
	}

	if (FUNC13(argv[3], 10, (unsigned long long *)&low_water_blocks)) {
		ti->error = "Invalid low water mark";
		r = -EINVAL;
		goto out;
	}

	pt = FUNC14(sizeof(*pt), GFP_KERNEL);
	if (!pt) {
		r = -ENOMEM;
		goto out;
	}

	pool = FUNC3(FUNC10(ti->table), metadata_dev->bdev,
			   block_size, pf.mode == PM_READ_ONLY, &ti->error, &pool_created);
	if (FUNC0(pool)) {
		r = FUNC1(pool);
		goto out_free_pt;
	}

	/*
	 * 'pool_created' reflects whether this is the first table load.
	 * Top level discard support is not allowed to be changed after
	 * initial load.  This would require a pool reload to trigger thin
	 * device changes.
	 */
	if (!pool_created && pf.discard_enabled != pool->pf.discard_enabled) {
		ti->error = "Discard support cannot be disabled once enabled";
		r = -EINVAL;
		goto out_flags_changed;
	}

	pt->pool = pool;
	pt->ti = ti;
	pt->metadata_dev = metadata_dev;
	pt->data_dev = data_dev;
	pt->low_water_blocks = low_water_blocks;
	pt->adjusted_pf = pt->requested_pf = pf;
	ti->num_flush_bios = 1;

	/*
	 * Only need to enable discards if the pool should pass
	 * them down to the data device.  The thin device's discard
	 * processing will cause mappings to be removed from the btree.
	 */
	if (pf.discard_enabled && pf.discard_passdown) {
		ti->num_discard_bios = 1;

		/*
		 * Setting 'discards_supported' circumvents the normal
		 * stacking of discard limits (this keeps the pool and
		 * thin devices' discard limits consistent).
		 */
		ti->discards_supported = true;
	}
	ti->private = pt;

	r = FUNC7(pt->pool->pmd,
						FUNC4(pt),
						metadata_low_callback,
						pool);
	if (r)
		goto out_flags_changed;

	pt->callbacks.congested_fn = pool_is_congested;
	FUNC9(ti->table, &pt->callbacks);

	FUNC16(&dm_thin_pool_table.mutex);

	return 0;

out_flags_changed:
	FUNC2(pool);
out_free_pt:
	FUNC11(pt);
out:
	FUNC8(ti, data_dev);
out_metadata:
	FUNC8(ti, metadata_dev);
out_unlock:
	FUNC16(&dm_thin_pool_table.mutex);

	return r;
}