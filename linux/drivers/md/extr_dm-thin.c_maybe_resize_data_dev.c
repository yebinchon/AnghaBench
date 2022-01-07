
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_c {struct pool* pool; } ;
struct pool {int pmd; int pool_md; int sectors_per_block; } ;
struct dm_target {scalar_t__ len; struct pool_c* private; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ dm_block_t ;


 int DMERR (char*,int ,...) ;
 int DMINFO (char*,int ,scalar_t__,unsigned long long) ;
 int EINVAL ;
 int dm_device_name (int ) ;
 int dm_pool_get_data_dev_size (int ,scalar_t__*) ;
 scalar_t__ dm_pool_metadata_needs_check (int ) ;
 int dm_pool_resize_data_dev (int ,scalar_t__) ;
 int metadata_operation_failed (struct pool*,char*,int) ;
 int sector_div (scalar_t__,int ) ;

__attribute__((used)) static int maybe_resize_data_dev(struct dm_target *ti, bool *need_commit)
{
 int r;
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 sector_t data_size = ti->len;
 dm_block_t sb_data_size;

 *need_commit = 0;

 (void) sector_div(data_size, pool->sectors_per_block);

 r = dm_pool_get_data_dev_size(pool->pmd, &sb_data_size);
 if (r) {
  DMERR("%s: failed to retrieve data device size",
        dm_device_name(pool->pool_md));
  return r;
 }

 if (data_size < sb_data_size) {
  DMERR("%s: pool target (%llu blocks) too small: expected %llu",
        dm_device_name(pool->pool_md),
        (unsigned long long)data_size, sb_data_size);
  return -EINVAL;

 } else if (data_size > sb_data_size) {
  if (dm_pool_metadata_needs_check(pool->pmd)) {
   DMERR("%s: unable to grow the data device until repaired.",
         dm_device_name(pool->pool_md));
   return 0;
  }

  if (sb_data_size)
   DMINFO("%s: growing the data device from %llu to %llu blocks",
          dm_device_name(pool->pool_md),
          sb_data_size, (unsigned long long)data_size);
  r = dm_pool_resize_data_dev(pool->pmd, data_size);
  if (r) {
   metadata_operation_failed(pool, "dm_pool_resize_data_dev", r);
   return r;
  }

  *need_commit = 1;
 }

 return 0;
}
