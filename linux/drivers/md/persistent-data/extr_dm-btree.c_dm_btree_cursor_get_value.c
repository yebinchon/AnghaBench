
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct dm_btree_cursor {int depth; TYPE_3__* info; struct cursor_node* nodes; } ;
struct cursor_node {int index; int b; } ;
struct TYPE_4__ {int flags; } ;
struct btree_node {TYPE_1__ header; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_6__ {TYPE_2__ value_type; } ;


 int EINVAL ;
 int ENODATA ;
 int INTERNAL_NODE ;
 struct btree_node* dm_block_data (int ) ;
 int * key_ptr (struct btree_node*,int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (void*,int ,int ) ;
 int value_ptr (struct btree_node*,int ) ;

int dm_btree_cursor_get_value(struct dm_btree_cursor *c, uint64_t *key, void *value_le)
{
 if (c->depth) {
  struct cursor_node *n = c->nodes + c->depth - 1;
  struct btree_node *bn = dm_block_data(n->b);

  if (le32_to_cpu(bn->header.flags) & INTERNAL_NODE)
   return -EINVAL;

  *key = le64_to_cpu(*key_ptr(bn, n->index));
  memcpy(value_le, value_ptr(bn, n->index), c->info->value_type.size);
  return 0;

 } else
  return -ENODATA;
}
