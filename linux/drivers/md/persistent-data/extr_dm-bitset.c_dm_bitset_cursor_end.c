
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bitset_cursor {int cursor; } ;


 void dm_array_cursor_end (int *) ;

void dm_bitset_cursor_end(struct dm_bitset_cursor *c)
{
 return dm_array_cursor_end(&c->cursor);
}
