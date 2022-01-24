#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct pool_c {int /*<<< orphan*/  requested_pf; scalar_t__ low_water_blocks; TYPE_5__* data_dev; TYPE_3__* metadata_dev; struct pool* pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  error_if_no_space; int /*<<< orphan*/  discard_passdown; int /*<<< orphan*/  discard_enabled; } ;
struct pool {scalar_t__ sectors_per_block; int /*<<< orphan*/  pmd; TYPE_1__ pf; int /*<<< orphan*/  pool_md; } ;
struct dm_target {struct pool_c* private; } ;
typedef  int status_type_t ;
typedef  enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
typedef  scalar_t__ dm_block_t ;
struct TYPE_10__ {TYPE_4__* bdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_8__ {TYPE_2__* bdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 unsigned int DM_STATUS_NOFLUSH_FLAG ; 
 int PM_FAIL ; 
 int PM_OUT_OF_DATA_SPACE ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 scalar_t__ FUNC2 (struct pool_c*) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct pool*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct dm_target *ti, status_type_t type,
			unsigned status_flags, char *result, unsigned maxlen)
{
	int r;
	unsigned sz = 0;
	uint64_t transaction_id;
	dm_block_t nr_free_blocks_data;
	dm_block_t nr_free_blocks_metadata;
	dm_block_t nr_blocks_data;
	dm_block_t nr_blocks_metadata;
	dm_block_t held_root;
	enum pool_mode mode;
	char buf[BDEVNAME_SIZE];
	char buf2[BDEVNAME_SIZE];
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;

	switch (type) {
	case STATUSTYPE_INFO:
		if (FUNC15(pool) == PM_FAIL) {
			FUNC0("Fail");
			break;
		}

		/* Commit to ensure statistics aren't out-of-date */
		if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !FUNC12(ti))
			(void) FUNC3(pool);

		r = FUNC10(pool->pmd, &transaction_id);
		if (r) {
			FUNC1("%s: dm_pool_get_metadata_transaction_id returned %d",
			      FUNC4(pool->pool_md), r);
			goto err;
		}

		r = FUNC7(pool->pmd, &nr_free_blocks_metadata);
		if (r) {
			FUNC1("%s: dm_pool_get_free_metadata_block_count returned %d",
			      FUNC4(pool->pool_md), r);
			goto err;
		}

		r = FUNC8(pool->pmd, &nr_blocks_metadata);
		if (r) {
			FUNC1("%s: dm_pool_get_metadata_dev_size returned %d",
			      FUNC4(pool->pool_md), r);
			goto err;
		}

		r = FUNC6(pool->pmd, &nr_free_blocks_data);
		if (r) {
			FUNC1("%s: dm_pool_get_free_block_count returned %d",
			      FUNC4(pool->pool_md), r);
			goto err;
		}

		r = FUNC5(pool->pmd, &nr_blocks_data);
		if (r) {
			FUNC1("%s: dm_pool_get_data_dev_size returned %d",
			      FUNC4(pool->pool_md), r);
			goto err;
		}

		r = FUNC9(pool->pmd, &held_root);
		if (r) {
			FUNC1("%s: dm_pool_get_metadata_snap returned %d",
			      FUNC4(pool->pool_md), r);
			goto err;
		}

		FUNC0("%llu %llu/%llu %llu/%llu ",
		       (unsigned long long)transaction_id,
		       (unsigned long long)(nr_blocks_metadata - nr_free_blocks_metadata),
		       (unsigned long long)nr_blocks_metadata,
		       (unsigned long long)(nr_blocks_data - nr_free_blocks_data),
		       (unsigned long long)nr_blocks_data);

		if (held_root)
			FUNC0("%llu ", held_root);
		else
			FUNC0("- ");

		mode = FUNC15(pool);
		if (mode == PM_OUT_OF_DATA_SPACE)
			FUNC0("out_of_data_space ");
		else if (FUNC16(mode))
			FUNC0("ro ");
		else
			FUNC0("rw ");

		if (!pool->pf.discard_enabled)
			FUNC0("ignore_discard ");
		else if (pool->pf.discard_passdown)
			FUNC0("discard_passdown ");
		else
			FUNC0("no_discard_passdown ");

		if (pool->pf.error_if_no_space)
			FUNC0("error_if_no_space ");
		else
			FUNC0("queue_if_no_space ");

		if (FUNC11(pool->pmd))
			FUNC0("needs_check ");
		else
			FUNC0("- ");

		FUNC0("%llu ", (unsigned long long)FUNC2(pt));

		break;

	case STATUSTYPE_TABLE:
		FUNC0("%s %s %lu %llu ",
		       FUNC14(buf, pt->metadata_dev->bdev->bd_dev),
		       FUNC14(buf2, pt->data_dev->bdev->bd_dev),
		       (unsigned long)pool->sectors_per_block,
		       (unsigned long long)pt->low_water_blocks);
		FUNC13(&pt->requested_pf, result, sz, maxlen);
		break;
	}
	return;

err:
	FUNC0("Error");
}