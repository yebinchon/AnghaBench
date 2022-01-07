
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value_le ;
struct dm_btree_cursor {int depth; struct cursor_node* nodes; } ;
struct cursor_node {int index; int b; } ;
struct TYPE_2__ {int nr_entries; int flags; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int __le64 ;


 int DMERR (char*) ;
 int ENODATA ;
 int LEAF_NODE ;
 struct btree_node* dm_block_data (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int push_node (struct dm_btree_cursor*,int ) ;
 int value_ptr (struct btree_node*,int ) ;

__attribute__((used)) static int find_leaf(struct dm_btree_cursor *c)
{
 int r = 0;
 struct cursor_node *n;
 struct btree_node *bn;
 __le64 value_le;

 for (;;) {
  n = c->nodes + c->depth - 1;
  bn = dm_block_data(n->b);

  if (le32_to_cpu(bn->header.flags) & LEAF_NODE)
   break;

  memcpy(&value_le, value_ptr(bn, n->index), sizeof(value_le));
  r = push_node(c, le64_to_cpu(value_le));
  if (r) {
   DMERR("push_node failed");
   break;
  }
 }

 if (!r && (le32_to_cpu(bn->header.nr_entries) == 0))
  return -ENODATA;

 return r;
}
