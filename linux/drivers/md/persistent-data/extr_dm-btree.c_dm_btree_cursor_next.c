
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_cursor {int dummy; } ;


 int DMERR (char*) ;
 int find_leaf (struct dm_btree_cursor*) ;
 int inc_or_backtrack (struct dm_btree_cursor*) ;

int dm_btree_cursor_next(struct dm_btree_cursor *c)
{
 int r = inc_or_backtrack(c);
 if (!r) {
  r = find_leaf(c);
  if (r)
   DMERR("find_leaf failed");
 }

 return r;
}
