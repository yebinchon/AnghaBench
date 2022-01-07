
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_info {int dummy; } ;
struct dm_btree_cursor {int prefetch_leaves; scalar_t__ depth; int root; struct dm_btree_info* info; } ;
typedef int dm_block_t ;


 int find_leaf (struct dm_btree_cursor*) ;
 int push_node (struct dm_btree_cursor*,int ) ;

int dm_btree_cursor_begin(struct dm_btree_info *info, dm_block_t root,
     bool prefetch_leaves, struct dm_btree_cursor *c)
{
 int r;

 c->info = info;
 c->root = root;
 c->depth = 0;
 c->prefetch_leaves = prefetch_leaves;

 r = push_node(c, root);
 if (r)
  return r;

 return find_leaf(c);
}
