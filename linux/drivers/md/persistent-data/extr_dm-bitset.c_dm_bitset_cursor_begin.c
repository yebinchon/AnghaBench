
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_disk_bitset {int array_info; } ;
struct dm_bitset_cursor {int current_bits; scalar_t__ bit_index; scalar_t__ array_index; int cursor; scalar_t__ entries_remaining; struct dm_disk_bitset* info; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int ENODATA ;
 int dm_array_cursor_begin (int *,int ,int *) ;
 int dm_array_cursor_get_value (int *,void**) ;
 int le64_to_cpu (int ) ;

int dm_bitset_cursor_begin(struct dm_disk_bitset *info,
      dm_block_t root, uint32_t nr_entries,
      struct dm_bitset_cursor *c)
{
 int r;
 __le64 *value;

 if (!nr_entries)
  return -ENODATA;

 c->info = info;
 c->entries_remaining = nr_entries;

 r = dm_array_cursor_begin(&info->array_info, root, &c->cursor);
 if (r)
  return r;

 dm_array_cursor_get_value(&c->cursor, (void **) &value);
 c->array_index = 0;
 c->bit_index = 0;
 c->current_bits = le64_to_cpu(*value);

 return r;
}
