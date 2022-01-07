
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_entries; scalar_t__ max_entries; int flags; } ;
struct btree_node {void** keys; TYPE_1__ header; } ;
typedef int dm_block_t ;
typedef void* __le64 ;


 int LEAF_NODE ;
 int __dm_bless_for_disk (void**) ;
 int btree_split_beneath (struct shadow_spine*,scalar_t__) ;
 int btree_split_sibling (struct shadow_spine*,int,scalar_t__) ;
 void* cpu_to_le64 (scalar_t__) ;
 struct btree_node* dm_block_data (int ) ;
 scalar_t__ dm_block_location (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (void*) ;
 int lower_bound (struct btree_node*,scalar_t__) ;
 int memcpy_disk (int ,void**,int) ;
 int shadow_current (struct shadow_spine*) ;
 scalar_t__ shadow_has_parent (struct shadow_spine*) ;
 int shadow_parent (struct shadow_spine*) ;
 int shadow_step (struct shadow_spine*,int ,struct dm_btree_value_type*) ;
 int value64 (struct btree_node*,int) ;
 int value_ptr (struct btree_node*,int) ;

__attribute__((used)) static int btree_insert_raw(struct shadow_spine *s, dm_block_t root,
       struct dm_btree_value_type *vt,
       uint64_t key, unsigned *index)
{
 int r, i = *index, top = 1;
 struct btree_node *node;

 for (;;) {
  r = shadow_step(s, root, vt);
  if (r < 0)
   return r;

  node = dm_block_data(shadow_current(s));






  if (shadow_has_parent(s) && i >= 0) {
   __le64 location = cpu_to_le64(dm_block_location(shadow_current(s)));

   __dm_bless_for_disk(&location);
   memcpy_disk(value_ptr(dm_block_data(shadow_parent(s)), i),
        &location, sizeof(__le64));
  }

  node = dm_block_data(shadow_current(s));

  if (node->header.nr_entries == node->header.max_entries) {
   if (top)
    r = btree_split_beneath(s, key);
   else
    r = btree_split_sibling(s, i, key);

   if (r < 0)
    return r;
  }

  node = dm_block_data(shadow_current(s));

  i = lower_bound(node, key);

  if (le32_to_cpu(node->header.flags) & LEAF_NODE)
   break;

  if (i < 0) {

   node->keys[0] = cpu_to_le64(key);
   i = 0;
  }

  root = value64(node, i);
  top = 0;
 }

 if (i < 0 || le64_to_cpu(node->keys[i]) != key)
  i++;

 *index = i;
 return 0;
}
