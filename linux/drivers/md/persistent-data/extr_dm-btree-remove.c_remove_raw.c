
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int LEAF_NODE ;
 int cpu_to_le64 (int ) ;
 struct btree_node* dm_block_data (int ) ;
 int dm_block_location (int ) ;
 int do_leaf (struct btree_node*,int ,unsigned int*) ;
 int le32_to_cpu (int ) ;
 int lower_bound (struct btree_node*,int ) ;
 int memcpy (int ,int *,int) ;
 int rebalance_children (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int ) ;
 int shadow_current (struct shadow_spine*) ;
 scalar_t__ shadow_has_parent (struct shadow_spine*) ;
 int shadow_parent (struct shadow_spine*) ;
 int shadow_step (struct shadow_spine*,int ,struct dm_btree_value_type*) ;
 int value64 (struct btree_node*,int) ;
 int value_ptr (struct btree_node*,int) ;

__attribute__((used)) static int remove_raw(struct shadow_spine *s, struct dm_btree_info *info,
        struct dm_btree_value_type *vt, dm_block_t root,
        uint64_t key, unsigned *index)
{
 int i = *index, r;
 struct btree_node *n;

 for (;;) {
  r = shadow_step(s, root, vt);
  if (r < 0)
   break;






  if (shadow_has_parent(s)) {
   __le64 location = cpu_to_le64(dm_block_location(shadow_current(s)));
   memcpy(value_ptr(dm_block_data(shadow_parent(s)), i),
          &location, sizeof(__le64));
  }

  n = dm_block_data(shadow_current(s));

  if (le32_to_cpu(n->header.flags) & LEAF_NODE)
   return do_leaf(n, key, index);

  r = rebalance_children(s, info, vt, key);
  if (r)
   break;

  n = dm_block_data(shadow_current(s));
  if (le32_to_cpu(n->header.flags) & LEAF_NODE)
   return do_leaf(n, key, index);

  i = lower_bound(n, key);






  root = value64(n, i);
 }

 return r;
}
