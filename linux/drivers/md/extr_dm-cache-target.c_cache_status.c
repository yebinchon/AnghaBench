
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dm_target {struct cache* private; } ;
struct TYPE_8__ {int promotion; int demotion; int write_miss; int write_hit; int read_miss; int read_hit; } ;
struct cache {int nr_ctr_args; int * ctr_args; TYPE_7__* origin_dev; TYPE_5__* cache_dev; TYPE_3__* metadata_dev; int cmd; int policy; scalar_t__ migration_threshold; int nr_dirty; TYPE_1__ stats; int cache_size; scalar_t__ sectors_per_block; } ;
typedef int status_type_t ;
typedef unsigned int ssize_t ;
typedef int dm_cblock_t ;
typedef scalar_t__ dm_block_t ;
struct TYPE_14__ {TYPE_6__* bdev; } ;
struct TYPE_13__ {int bd_dev; } ;
struct TYPE_12__ {TYPE_4__* bdev; } ;
struct TYPE_11__ {int bd_dev; } ;
struct TYPE_10__ {TYPE_2__* bdev; } ;
struct TYPE_9__ {int bd_dev; } ;


 int BDEVNAME_SIZE ;
 int CM_FAIL ;
 int CM_READ_ONLY ;
 int DMEMIT (char*,...) ;
 int DMERR (char*,int ,int) ;
 int DM_CACHE_METADATA_BLOCK_SIZE ;
 unsigned int DM_STATUS_NOFLUSH_FLAG ;


 scalar_t__ atomic_read (int *) ;
 int cache_device_name (struct cache*) ;
 int commit (struct cache*,int) ;
 int dm_cache_get_free_metadata_block_count (int ,scalar_t__*) ;
 int dm_cache_get_metadata_dev_size (int ,scalar_t__*) ;
 int dm_cache_metadata_needs_check (int ,int*) ;
 int dm_cache_policy_get_name (int ) ;
 int dm_suspended (struct dm_target*) ;
 int emit_flags (struct cache*,char*,unsigned int,unsigned int*) ;
 int format_dev_t (char*,int ) ;
 scalar_t__ from_cblock (int ) ;
 int get_cache_mode (struct cache*) ;
 int policy_emit_config_values (int ,char*,unsigned int,unsigned int*) ;
 int policy_residency (int ) ;

__attribute__((used)) static void cache_status(struct dm_target *ti, status_type_t type,
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
 case 129:
  if (get_cache_mode(cache) == CM_FAIL) {
   DMEMIT("Fail");
   break;
  }


  if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !dm_suspended(ti))
   (void) commit(cache, 0);

  r = dm_cache_get_free_metadata_block_count(cache->cmd, &nr_free_blocks_metadata);
  if (r) {
   DMERR("%s: dm_cache_get_free_metadata_block_count returned %d",
         cache_device_name(cache), r);
   goto err;
  }

  r = dm_cache_get_metadata_dev_size(cache->cmd, &nr_blocks_metadata);
  if (r) {
   DMERR("%s: dm_cache_get_metadata_dev_size returned %d",
         cache_device_name(cache), r);
   goto err;
  }

  residency = policy_residency(cache->policy);

  DMEMIT("%u %llu/%llu %llu %llu/%llu %u %u %u %u %u %u %lu ",
         (unsigned)DM_CACHE_METADATA_BLOCK_SIZE,
         (unsigned long long)(nr_blocks_metadata - nr_free_blocks_metadata),
         (unsigned long long)nr_blocks_metadata,
         (unsigned long long)cache->sectors_per_block,
         (unsigned long long) from_cblock(residency),
         (unsigned long long) from_cblock(cache->cache_size),
         (unsigned) atomic_read(&cache->stats.read_hit),
         (unsigned) atomic_read(&cache->stats.read_miss),
         (unsigned) atomic_read(&cache->stats.write_hit),
         (unsigned) atomic_read(&cache->stats.write_miss),
         (unsigned) atomic_read(&cache->stats.demotion),
         (unsigned) atomic_read(&cache->stats.promotion),
         (unsigned long) atomic_read(&cache->nr_dirty));

  emit_flags(cache, result, maxlen, &sz);

  DMEMIT("2 migration_threshold %llu ", (unsigned long long) cache->migration_threshold);

  DMEMIT("%s ", dm_cache_policy_get_name(cache->policy));
  if (sz < maxlen) {
   r = policy_emit_config_values(cache->policy, result, maxlen, &sz);
   if (r)
    DMERR("%s: policy_emit_config_values returned %d",
          cache_device_name(cache), r);
  }

  if (get_cache_mode(cache) == CM_READ_ONLY)
   DMEMIT("ro ");
  else
   DMEMIT("rw ");

  r = dm_cache_metadata_needs_check(cache->cmd, &needs_check);

  if (r || needs_check)
   DMEMIT("needs_check ");
  else
   DMEMIT("- ");

  break;

 case 128:
  format_dev_t(buf, cache->metadata_dev->bdev->bd_dev);
  DMEMIT("%s ", buf);
  format_dev_t(buf, cache->cache_dev->bdev->bd_dev);
  DMEMIT("%s ", buf);
  format_dev_t(buf, cache->origin_dev->bdev->bd_dev);
  DMEMIT("%s", buf);

  for (i = 0; i < cache->nr_ctr_args - 1; i++)
   DMEMIT(" %s", cache->ctr_args[i]);
  if (cache->nr_ctr_args)
   DMEMIT(" %s", cache->ctr_args[cache->nr_ctr_args - 1]);
 }

 return;

err:
 DMEMIT("Error");
}
