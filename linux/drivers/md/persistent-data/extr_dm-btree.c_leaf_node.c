
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_btree_cursor {int depth; struct cursor_node* nodes; } ;
struct cursor_node {int b; } ;
struct TYPE_2__ {int flags; } ;
struct btree_node {TYPE_1__ header; } ;


 int LEAF_NODE ;
 struct btree_node* dm_block_data (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool leaf_node(struct dm_btree_cursor *c)
{
 struct cursor_node *n = c->nodes + c->depth - 1;
 struct btree_node *bn = dm_block_data(n->b);

 return le32_to_cpu(bn->header.flags) & LEAF_NODE;
}
