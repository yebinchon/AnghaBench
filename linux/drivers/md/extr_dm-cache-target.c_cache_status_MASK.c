#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dm_target {struct cache* private; } ;
struct TYPE_8__ {int /*<<< orphan*/  promotion; int /*<<< orphan*/  demotion; int /*<<< orphan*/  write_miss; int /*<<< orphan*/  write_hit; int /*<<< orphan*/  read_miss; int /*<<< orphan*/  read_hit; } ;
struct cache {int /*<<< orphan*/  nr_ctr_args; int /*<<< orphan*/ * ctr_args; TYPE_7__* origin_dev; TYPE_5__* cache_dev; TYPE_3__* metadata_dev; int /*<<< orphan*/  cmd; int /*<<< orphan*/  policy; scalar_t__ migration_threshold; int /*<<< orphan*/  nr_dirty; TYPE_1__ stats; int /*<<< orphan*/  cache_size; scalar_t__ sectors_per_block; } ;
typedef  int status_type_t ;
typedef  unsigned int ssize_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
typedef  scalar_t__ dm_block_t ;
struct TYPE_14__ {TYPE_6__* bdev; } ;
struct TYPE_13__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_12__ {TYPE_4__* bdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_10__ {TYPE_2__* bdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  CM_FAIL ; 
 int /*<<< orphan*/  CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DM_CACHE_METADATA_BLOCK_SIZE ; 
 unsigned int DM_STATUS_NOFLUSH_FLAG ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC10 (struct cache*,char*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cache*) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct dm_target *ti, status_type_t type,
			 unsigned status_flags, char *result, unsigned maxlen)
{
	int r = 0;
	unsigned i;
	ssize_t sz = 0;
	dm_block_t nr_free_blocks_metadata = 0;
	dm_block_t nr_blocks_metadata = 0;
	char buf[BDEVNAME_SIZE];
	struct cache *cache = ti->private;
	dm_cblock_t residency;
	bool needs_check;

	switch (type) {
	case STATUSTYPE_INFO:
		if (FUNC13(cache) == CM_FAIL) {
			FUNC0("Fail");
			break;
		}

		/* Commit to ensure statistics aren't out-of-date */
		if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !FUNC9(ti))
			(void) FUNC4(cache, false);

		r = FUNC5(cache->cmd, &nr_free_blocks_metadata);
		if (r) {
			FUNC1("%s: dm_cache_get_free_metadata_block_count returned %d",
			      FUNC3(cache), r);
			goto err;
		}

		r = FUNC6(cache->cmd, &nr_blocks_metadata);
		if (r) {
			FUNC1("%s: dm_cache_get_metadata_dev_size returned %d",
			      FUNC3(cache), r);
			goto err;
		}

		residency = FUNC15(cache->policy);

		FUNC0("%u %llu/%llu %llu %llu/%llu %u %u %u %u %u %u %lu ",
		       (unsigned)DM_CACHE_METADATA_BLOCK_SIZE,
		       (unsigned long long)(nr_blocks_metadata - nr_free_blocks_metadata),
		       (unsigned long long)nr_blocks_metadata,
		       (unsigned long long)cache->sectors_per_block,
		       (unsigned long long) FUNC12(residency),
		       (unsigned long long) FUNC12(cache->cache_size),
		       (unsigned) FUNC2(&cache->stats.read_hit),
		       (unsigned) FUNC2(&cache->stats.read_miss),
		       (unsigned) FUNC2(&cache->stats.write_hit),
		       (unsigned) FUNC2(&cache->stats.write_miss),
		       (unsigned) FUNC2(&cache->stats.demotion),
		       (unsigned) FUNC2(&cache->stats.promotion),
		       (unsigned long) FUNC2(&cache->nr_dirty));

		FUNC10(cache, result, maxlen, &sz);

		FUNC0("2 migration_threshold %llu ", (unsigned long long) cache->migration_threshold);

		FUNC0("%s ", FUNC8(cache->policy));
		if (sz < maxlen) {
			r = FUNC14(cache->policy, result, maxlen, &sz);
			if (r)
				FUNC1("%s: policy_emit_config_values returned %d",
				      FUNC3(cache), r);
		}

		if (FUNC13(cache) == CM_READ_ONLY)
			FUNC0("ro ");
		else
			FUNC0("rw ");

		r = FUNC7(cache->cmd, &needs_check);

		if (r || needs_check)
			FUNC0("needs_check ");
		else
			FUNC0("- ");

		break;

	case STATUSTYPE_TABLE:
		FUNC11(buf, cache->metadata_dev->bdev->bd_dev);
		FUNC0("%s ", buf);
		FUNC11(buf, cache->cache_dev->bdev->bd_dev);
		FUNC0("%s ", buf);
		FUNC11(buf, cache->origin_dev->bdev->bd_dev);
		FUNC0("%s", buf);

		for (i = 0; i < cache->nr_ctr_args - 1; i++)
			FUNC0(" %s", cache->ctr_args[i]);
		if (cache->nr_ctr_args)
			FUNC0(" %s", cache->ctr_args[cache->nr_ctr_args - 1]);
	}

	return;

err:
	FUNC0("Error");
}