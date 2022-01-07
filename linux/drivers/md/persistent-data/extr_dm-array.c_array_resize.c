
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct resize {scalar_t__ max_entries; int root; void const* value; scalar_t__ new_nr_entries_in_last_block; scalar_t__ new_nr_full_blocks; scalar_t__ old_nr_entries_in_last_block; scalar_t__ old_nr_full_blocks; int size_of_block; struct dm_array_info* info; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int tm; } ;
struct dm_array_info {TYPE_2__ value_type; TYPE_1__ btree_info; } ;
typedef int dm_block_t ;


 scalar_t__ calc_max_entries (int ,int ) ;
 int dm_bm_block_size (int ) ;
 int dm_tm_get_bm (int ) ;
 int grow (struct resize*) ;
 int shrink (struct resize*) ;
 int stub1 (struct resize*) ;

__attribute__((used)) static int array_resize(struct dm_array_info *info, dm_block_t root,
   uint32_t old_size, uint32_t new_size,
   const void *value, dm_block_t *new_root)
{
 int r;
 struct resize resize;

 if (old_size == new_size) {
  *new_root = root;
  return 0;
 }

 resize.info = info;
 resize.root = root;
 resize.size_of_block = dm_bm_block_size(dm_tm_get_bm(info->btree_info.tm));
 resize.max_entries = calc_max_entries(info->value_type.size,
           resize.size_of_block);

 resize.old_nr_full_blocks = old_size / resize.max_entries;
 resize.old_nr_entries_in_last_block = old_size % resize.max_entries;
 resize.new_nr_full_blocks = new_size / resize.max_entries;
 resize.new_nr_entries_in_last_block = new_size % resize.max_entries;
 resize.value = value;

 r = ((new_size > old_size) ? grow : shrink)(&resize);
 if (r)
  return r;

 *new_root = resize.root;
 return 0;
}
