
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_cursor {int depth; scalar_t__ prefetch_leaves; int info; struct cursor_node* nodes; } ;
struct cursor_node {scalar_t__ index; int b; } ;
typedef int dm_block_t ;


 int DMERR (char*) ;
 int DM_BTREE_CURSOR_MAX_DEPTH ;
 int EINVAL ;
 int bn_read_lock (int ,int ,int *) ;
 int leaf_node (struct dm_btree_cursor*) ;
 int prefetch_values (struct dm_btree_cursor*) ;

__attribute__((used)) static int push_node(struct dm_btree_cursor *c, dm_block_t b)
{
 int r;
 struct cursor_node *n = c->nodes + c->depth;

 if (c->depth >= DM_BTREE_CURSOR_MAX_DEPTH - 1) {
  DMERR("couldn't push cursor node, stack depth too high");
  return -EINVAL;
 }

 r = bn_read_lock(c->info, b, &n->b);
 if (r)
  return r;

 n->index = 0;
 c->depth++;

 if (c->prefetch_leaves || !leaf_node(c))
  prefetch_values(c);

 return 0;
}
