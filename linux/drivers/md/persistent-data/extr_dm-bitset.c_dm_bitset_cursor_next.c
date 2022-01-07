
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bitset_cursor {int bit_index; int entries_remaining; } ;


 int ENODATA ;
 int cursor_next_array_entry (struct dm_bitset_cursor*) ;

int dm_bitset_cursor_next(struct dm_bitset_cursor *c)
{
 int r = 0;

 if (!c->entries_remaining)
  return -ENODATA;

 c->entries_remaining--;
 if (++c->bit_index > 63)
  r = cursor_next_array_entry(c);

 return r;
}
