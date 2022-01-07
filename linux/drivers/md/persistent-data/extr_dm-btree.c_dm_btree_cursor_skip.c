
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_btree_cursor {int dummy; } ;


 int dm_btree_cursor_next (struct dm_btree_cursor*) ;

int dm_btree_cursor_skip(struct dm_btree_cursor *c, uint32_t count)
{
 int r = 0;

 while (count-- && !r)
  r = dm_btree_cursor_next(c);

 return r;
}
