
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_cursor {scalar_t__ depth; } ;


 int pop_node (struct dm_btree_cursor*) ;

void dm_btree_cursor_end(struct dm_btree_cursor *c)
{
 while (c->depth)
  pop_node(c);
}
