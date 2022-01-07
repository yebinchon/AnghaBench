
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dm_btree_info {int tm; } ;
struct child {int block; int index; } ;
struct TYPE_2__ {void* nr_entries; int max_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;


 int BUG_ON (int) ;
 int __rebalance2 (struct dm_btree_info*,struct btree_node*,struct child*,struct child*) ;
 void* cpu_to_le32 (scalar_t__) ;
 int delete_at (struct btree_node*,int ) ;
 int dm_block_location (int ) ;
 int dm_tm_dec (int ,int ) ;
 int * key_ptr (struct btree_node*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 unsigned int min (scalar_t__,scalar_t__) ;
 int node_copy (struct btree_node*,struct btree_node*,unsigned int) ;
 int node_shift (struct btree_node*,unsigned int) ;

__attribute__((used)) static void delete_center_node(struct dm_btree_info *info, struct btree_node *parent,
          struct child *l, struct child *c, struct child *r,
          struct btree_node *left, struct btree_node *center, struct btree_node *right,
          uint32_t nr_left, uint32_t nr_center, uint32_t nr_right)
{
 uint32_t max_entries = le32_to_cpu(left->header.max_entries);
 unsigned shift = min(max_entries - nr_left, nr_center);

 BUG_ON(nr_left + shift > max_entries);
 node_copy(left, center, -shift);
 left->header.nr_entries = cpu_to_le32(nr_left + shift);

 if (shift != nr_center) {
  shift = nr_center - shift;
  BUG_ON((nr_right + shift) > max_entries);
  node_shift(right, shift);
  node_copy(center, right, shift);
  right->header.nr_entries = cpu_to_le32(nr_right + shift);
 }
 *key_ptr(parent, r->index) = right->keys[0];

 delete_at(parent, c->index);
 r->index--;

 dm_tm_dec(info->tm, dm_block_location(c->block));
 __rebalance2(info, parent, l, r);
}
