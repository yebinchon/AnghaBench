
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_target {int num_flush_bios; int per_io_data_size; } ;
struct dm_table {unsigned int num_targets; int mempools; int integrity_supported; struct dm_target* targets; } ;
typedef enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;


 int DMWARN (char*) ;
 int DM_TYPE_NONE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ __table_type_bio_based (int) ;
 int dm_alloc_md_mempools (struct mapped_device*,int,int ,unsigned int,unsigned int) ;
 int dm_table_get_type (struct dm_table*) ;
 unsigned int max (unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_table_alloc_md_mempools(struct dm_table *t, struct mapped_device *md)
{
 enum dm_queue_mode type = dm_table_get_type(t);
 unsigned per_io_data_size = 0;
 unsigned min_pool_size = 0;
 struct dm_target *ti;
 unsigned i;

 if (unlikely(type == DM_TYPE_NONE)) {
  DMWARN("no table type is set, can't allocate mempools");
  return -EINVAL;
 }

 if (__table_type_bio_based(type))
  for (i = 0; i < t->num_targets; i++) {
   ti = t->targets + i;
   per_io_data_size = max(per_io_data_size, ti->per_io_data_size);
   min_pool_size = max(min_pool_size, ti->num_flush_bios);
  }

 t->mempools = dm_alloc_md_mempools(md, type, t->integrity_supported,
        per_io_data_size, min_pool_size);
 if (!t->mempools)
  return -ENOMEM;

 return 0;
}
