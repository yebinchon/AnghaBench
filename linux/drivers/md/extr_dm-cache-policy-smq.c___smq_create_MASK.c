#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_cache_policy {int dummy; } ;
struct TYPE_3__ {int nr_top_levels; int /*<<< orphan*/  nr_in_top_levels; } ;
struct smq_policy {unsigned int nr_hotspot_blocks; int cache_blocks_per_hotspot_block; unsigned int hotspot_level_jump; unsigned int write_promote_level; unsigned int read_promote_level; int migrations_allowed; int /*<<< orphan*/  es; int /*<<< orphan*/ * hotspot_hit_bits; int /*<<< orphan*/ * cache_hit_bits; int /*<<< orphan*/  table; int /*<<< orphan*/  hotspot_table; struct dm_cache_policy policy; int /*<<< orphan*/  bg_work; void* next_cache_period; void* next_hotspot_period; int /*<<< orphan*/  cache_stats; int /*<<< orphan*/  hotspot_stats; TYPE_1__ dirty; TYPE_1__ clean; int /*<<< orphan*/  cache_size; TYPE_1__ hotspot; int /*<<< orphan*/  lock; scalar_t__ tick; int /*<<< orphan*/  cache_alloc; int /*<<< orphan*/  hotspot_alloc; int /*<<< orphan*/  demote_sentinel_alloc; int /*<<< orphan*/  writeback_sentinel_alloc; int /*<<< orphan*/  cache_block_size; int /*<<< orphan*/  hotspot_block_size; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
struct TYPE_4__ {int sentinel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int NR_CACHE_LEVELS ; 
 unsigned int NR_HOTSPOT_LEVELS ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct smq_policy*,int) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC13 (struct smq_policy*) ; 
 struct smq_policy* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct smq_policy*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static struct dm_cache_policy *FUNC22(dm_cblock_t cache_size,
					    sector_t origin_size,
					    sector_t cache_block_size,
					    bool mimic_mq,
					    bool migrations_allowed)
{
	unsigned i;
	unsigned nr_sentinels_per_queue = 2u * NR_CACHE_LEVELS;
	unsigned total_sentinels = 2u * nr_sentinels_per_queue;
	struct smq_policy *mq = FUNC14(sizeof(*mq), GFP_KERNEL);

	if (!mq)
		return NULL;

	FUNC12(mq, mimic_mq);
	mq->cache_size = cache_size;
	mq->cache_block_size = cache_block_size;

	FUNC3(origin_size, cache_block_size, FUNC7(cache_size),
			    &mq->hotspot_block_size, &mq->nr_hotspot_blocks);

	mq->cache_blocks_per_hotspot_block = FUNC5(mq->hotspot_block_size, mq->cache_block_size);
	mq->hotspot_level_jump = 1u;
	if (FUNC19(&mq->es, total_sentinels + mq->nr_hotspot_blocks + FUNC7(cache_size))) {
		FUNC0("couldn't initialize entry space");
		goto bad_pool_init;
	}

	FUNC11(&mq->writeback_sentinel_alloc, &mq->es, 0, nr_sentinels_per_queue);
	for (i = 0; i < nr_sentinels_per_queue; i++)
		FUNC8(&mq->writeback_sentinel_alloc, i)->sentinel = true;

	FUNC11(&mq->demote_sentinel_alloc, &mq->es, nr_sentinels_per_queue, total_sentinels);
	for (i = 0; i < nr_sentinels_per_queue; i++)
		FUNC8(&mq->demote_sentinel_alloc, i)->sentinel = true;

	FUNC11(&mq->hotspot_alloc, &mq->es, total_sentinels,
		       total_sentinels + mq->nr_hotspot_blocks);

	FUNC11(&mq->cache_alloc, &mq->es,
		       total_sentinels + mq->nr_hotspot_blocks,
		       total_sentinels + mq->nr_hotspot_blocks + FUNC7(cache_size));

	mq->hotspot_hit_bits = FUNC1(mq->nr_hotspot_blocks);
	if (!mq->hotspot_hit_bits) {
		FUNC0("couldn't allocate hotspot hit bitset");
		goto bad_hotspot_hit_bits;
	}
	FUNC4(mq->hotspot_hit_bits, mq->nr_hotspot_blocks);

	if (FUNC7(cache_size)) {
		mq->cache_hit_bits = FUNC1(FUNC7(cache_size));
		if (!mq->cache_hit_bits) {
			FUNC0("couldn't allocate cache hit bitset");
			goto bad_cache_hit_bits;
		}
		FUNC4(mq->cache_hit_bits, FUNC7(mq->cache_size));
	} else
		mq->cache_hit_bits = NULL;

	mq->tick = 0;
	FUNC20(&mq->lock);

	FUNC16(&mq->hotspot, &mq->es, NR_HOTSPOT_LEVELS);
	mq->hotspot.nr_top_levels = 8;
	mq->hotspot.nr_in_top_levels = FUNC15(mq->nr_hotspot_blocks / NR_HOTSPOT_LEVELS,
					   FUNC7(mq->cache_size) / mq->cache_blocks_per_hotspot_block);

	FUNC16(&mq->clean, &mq->es, NR_CACHE_LEVELS);
	FUNC16(&mq->dirty, &mq->es, NR_CACHE_LEVELS);

	FUNC21(&mq->hotspot_stats, NR_HOTSPOT_LEVELS);
	FUNC21(&mq->cache_stats, NR_CACHE_LEVELS);

	if (FUNC10(&mq->table, &mq->es, FUNC7(cache_size)))
		goto bad_alloc_table;

	if (FUNC10(&mq->hotspot_table, &mq->es, mq->nr_hotspot_blocks))
		goto bad_alloc_hotspot_table;

	FUNC17(mq);
	mq->write_promote_level = mq->read_promote_level = NR_HOTSPOT_LEVELS;

	mq->next_hotspot_period = jiffies;
	mq->next_cache_period = jiffies;

	mq->bg_work = FUNC2(4096); /* FIXME: hard coded value */
	if (!mq->bg_work)
		goto bad_btracker;

	mq->migrations_allowed = migrations_allowed;

	return &mq->policy;

bad_btracker:
	FUNC9(&mq->hotspot_table);
bad_alloc_hotspot_table:
	FUNC9(&mq->table);
bad_alloc_table:
	FUNC6(mq->cache_hit_bits);
bad_cache_hit_bits:
	FUNC6(mq->hotspot_hit_bits);
bad_hotspot_hit_bits:
	FUNC18(&mq->es);
bad_pool_init:
	FUNC13(mq);

	return NULL;
}