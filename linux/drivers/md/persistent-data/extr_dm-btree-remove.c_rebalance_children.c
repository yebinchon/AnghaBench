
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int tm; } ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int dm_block_t ;


 int ENODATA ;
 int btree_node_validator ;
 struct btree_node* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_bm_block_size (int ) ;
 int dm_tm_dec (int ,int ) ;
 int dm_tm_get_bm (int ) ;
 int dm_tm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 int le32_to_cpu (int ) ;
 int lower_bound (struct btree_node*,int ) ;
 int memcpy (struct btree_node*,struct btree_node*,int ) ;
 int rebalance2 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int) ;
 int rebalance3 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int) ;
 struct dm_block* shadow_current (struct shadow_spine*) ;
 int value64 (struct btree_node*,int ) ;

__attribute__((used)) static int rebalance_children(struct shadow_spine *s,
         struct dm_btree_info *info,
         struct dm_btree_value_type *vt, uint64_t key)
{
 int i, r, has_left_sibling, has_right_sibling;
 struct btree_node *n;

 n = dm_block_data(shadow_current(s));

 if (le32_to_cpu(n->header.nr_entries) == 1) {
  struct dm_block *child;
  dm_block_t b = value64(n, 0);

  r = dm_tm_read_lock(info->tm, b, &btree_node_validator, &child);
  if (r)
   return r;

  memcpy(n, dm_block_data(child),
         dm_bm_block_size(dm_tm_get_bm(info->tm)));
  dm_tm_unlock(info->tm, child);

  dm_tm_dec(info->tm, dm_block_location(child));
  return 0;
 }

 i = lower_bound(n, key);
 if (i < 0)
  return -ENODATA;

 has_left_sibling = i > 0;
 has_right_sibling = i < (le32_to_cpu(n->header.nr_entries) - 1);

 if (!has_left_sibling)
  r = rebalance2(s, info, vt, i);

 else if (!has_right_sibling)
  r = rebalance2(s, info, vt, i - 1);

 else
  r = rebalance3(s, info, vt, i - 1);

 return r;
}
