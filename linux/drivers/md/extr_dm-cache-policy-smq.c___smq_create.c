
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_cache_policy {int dummy; } ;
struct TYPE_3__ {int nr_top_levels; int nr_in_top_levels; } ;
struct smq_policy {unsigned int nr_hotspot_blocks; int cache_blocks_per_hotspot_block; unsigned int hotspot_level_jump; unsigned int write_promote_level; unsigned int read_promote_level; int migrations_allowed; int es; int * hotspot_hit_bits; int * cache_hit_bits; int table; int hotspot_table; struct dm_cache_policy policy; int bg_work; void* next_cache_period; void* next_hotspot_period; int cache_stats; int hotspot_stats; TYPE_1__ dirty; TYPE_1__ clean; int cache_size; TYPE_1__ hotspot; int lock; scalar_t__ tick; int cache_alloc; int hotspot_alloc; int demote_sentinel_alloc; int writeback_sentinel_alloc; int cache_block_size; int hotspot_block_size; } ;
typedef int sector_t ;
typedef int dm_cblock_t ;
struct TYPE_4__ {int sentinel; } ;


 int DMERR (char*) ;
 int GFP_KERNEL ;
 unsigned int NR_CACHE_LEVELS ;
 unsigned int NR_HOTSPOT_LEVELS ;
 void* alloc_bitset (int) ;
 int btracker_create (int) ;
 int calc_hotspot_params (int ,int ,int,int *,unsigned int*) ;
 int clear_bitset (int *,int) ;
 int div64_u64 (int ,int ) ;
 int free_bitset (int *) ;
 int from_cblock (int ) ;
 TYPE_2__* get_entry (int *,unsigned int) ;
 int h_exit (int *) ;
 scalar_t__ h_init (int *,int *,int) ;
 int init_allocator (int *,int *,unsigned int,unsigned int) ;
 int init_policy_functions (struct smq_policy*,int) ;
 void* jiffies ;
 int kfree (struct smq_policy*) ;
 struct smq_policy* kzalloc (int,int ) ;
 int min (unsigned int,int) ;
 int q_init (TYPE_1__*,int *,unsigned int) ;
 int sentinels_init (struct smq_policy*) ;
 int space_exit (int *) ;
 scalar_t__ space_init (int *,unsigned int) ;
 int spin_lock_init (int *) ;
 int stats_init (int *,unsigned int) ;

__attribute__((used)) static struct dm_cache_policy *__smq_create(dm_cblock_t cache_size,
         sector_t origin_size,
         sector_t cache_block_size,
         bool mimic_mq,
         bool migrations_allowed)
{
 unsigned i;
 unsigned nr_sentinels_per_queue = 2u * NR_CACHE_LEVELS;
 unsigned total_sentinels = 2u * nr_sentinels_per_queue;
 struct smq_policy *mq = kzalloc(sizeof(*mq), GFP_KERNEL);

 if (!mq)
  return ((void*)0);

 init_policy_functions(mq, mimic_mq);
 mq->cache_size = cache_size;
 mq->cache_block_size = cache_block_size;

 calc_hotspot_params(origin_size, cache_block_size, from_cblock(cache_size),
       &mq->hotspot_block_size, &mq->nr_hotspot_blocks);

 mq->cache_blocks_per_hotspot_block = div64_u64(mq->hotspot_block_size, mq->cache_block_size);
 mq->hotspot_level_jump = 1u;
 if (space_init(&mq->es, total_sentinels + mq->nr_hotspot_blocks + from_cblock(cache_size))) {
  DMERR("couldn't initialize entry space");
  goto bad_pool_init;
 }

 init_allocator(&mq->writeback_sentinel_alloc, &mq->es, 0, nr_sentinels_per_queue);
 for (i = 0; i < nr_sentinels_per_queue; i++)
  get_entry(&mq->writeback_sentinel_alloc, i)->sentinel = 1;

 init_allocator(&mq->demote_sentinel_alloc, &mq->es, nr_sentinels_per_queue, total_sentinels);
 for (i = 0; i < nr_sentinels_per_queue; i++)
  get_entry(&mq->demote_sentinel_alloc, i)->sentinel = 1;

 init_allocator(&mq->hotspot_alloc, &mq->es, total_sentinels,
         total_sentinels + mq->nr_hotspot_blocks);

 init_allocator(&mq->cache_alloc, &mq->es,
         total_sentinels + mq->nr_hotspot_blocks,
         total_sentinels + mq->nr_hotspot_blocks + from_cblock(cache_size));

 mq->hotspot_hit_bits = alloc_bitset(mq->nr_hotspot_blocks);
 if (!mq->hotspot_hit_bits) {
  DMERR("couldn't allocate hotspot hit bitset");
  goto bad_hotspot_hit_bits;
 }
 clear_bitset(mq->hotspot_hit_bits, mq->nr_hotspot_blocks);

 if (from_cblock(cache_size)) {
  mq->cache_hit_bits = alloc_bitset(from_cblock(cache_size));
  if (!mq->cache_hit_bits) {
   DMERR("couldn't allocate cache hit bitset");
   goto bad_cache_hit_bits;
  }
  clear_bitset(mq->cache_hit_bits, from_cblock(mq->cache_size));
 } else
  mq->cache_hit_bits = ((void*)0);

 mq->tick = 0;
 spin_lock_init(&mq->lock);

 q_init(&mq->hotspot, &mq->es, NR_HOTSPOT_LEVELS);
 mq->hotspot.nr_top_levels = 8;
 mq->hotspot.nr_in_top_levels = min(mq->nr_hotspot_blocks / NR_HOTSPOT_LEVELS,
        from_cblock(mq->cache_size) / mq->cache_blocks_per_hotspot_block);

 q_init(&mq->clean, &mq->es, NR_CACHE_LEVELS);
 q_init(&mq->dirty, &mq->es, NR_CACHE_LEVELS);

 stats_init(&mq->hotspot_stats, NR_HOTSPOT_LEVELS);
 stats_init(&mq->cache_stats, NR_CACHE_LEVELS);

 if (h_init(&mq->table, &mq->es, from_cblock(cache_size)))
  goto bad_alloc_table;

 if (h_init(&mq->hotspot_table, &mq->es, mq->nr_hotspot_blocks))
  goto bad_alloc_hotspot_table;

 sentinels_init(mq);
 mq->write_promote_level = mq->read_promote_level = NR_HOTSPOT_LEVELS;

 mq->next_hotspot_period = jiffies;
 mq->next_cache_period = jiffies;

 mq->bg_work = btracker_create(4096);
 if (!mq->bg_work)
  goto bad_btracker;

 mq->migrations_allowed = migrations_allowed;

 return &mq->policy;

bad_btracker:
 h_exit(&mq->hotspot_table);
bad_alloc_hotspot_table:
 h_exit(&mq->table);
bad_alloc_table:
 free_bitset(mq->cache_hit_bits);
bad_cache_hit_bits:
 free_bitset(mq->hotspot_hit_bits);
bad_hotspot_hit_bits:
 space_exit(&mq->es);
bad_pool_init:
 kfree(mq);

 return ((void*)0);
}
