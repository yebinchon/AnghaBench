
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int nr_regions; int region_map; int bitset_root; int bitset_info; } ;
struct dm_bitset_cursor {int dummy; } ;


 int __clear_bit (unsigned long,int ) ;
 int __set_bit (unsigned long,int ) ;
 int dm_bitset_cursor_begin (int *,int ,int,struct dm_bitset_cursor*) ;
 int dm_bitset_cursor_end (struct dm_bitset_cursor*) ;
 scalar_t__ dm_bitset_cursor_get_value (struct dm_bitset_cursor*) ;
 int dm_bitset_cursor_next (struct dm_bitset_cursor*) ;
 int dm_bitset_flush (int *,int ,int *) ;

__attribute__((used)) static int __load_bitset_in_core(struct dm_clone_metadata *cmd)
{
 int r;
 unsigned long i;
 struct dm_bitset_cursor c;


 r = dm_bitset_flush(&cmd->bitset_info, cmd->bitset_root, &cmd->bitset_root);
 if (r)
  return r;

 r = dm_bitset_cursor_begin(&cmd->bitset_info, cmd->bitset_root, cmd->nr_regions, &c);
 if (r)
  return r;

 for (i = 0; ; i++) {
  if (dm_bitset_cursor_get_value(&c))
   __set_bit(i, cmd->region_map);
  else
   __clear_bit(i, cmd->region_map);

  if (i >= (cmd->nr_regions - 1))
   break;

  r = dm_bitset_cursor_next(&c);

  if (r)
   break;
 }

 dm_bitset_cursor_end(&c);

 return r;
}
