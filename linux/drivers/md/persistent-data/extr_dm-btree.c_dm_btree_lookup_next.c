
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ro_spine {int dummy; } ;
struct dm_btree_info {unsigned int levels; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int ENODATA ;
 int btree_lookup_raw (struct ro_spine*,int ,scalar_t__,int ,scalar_t__*,int *,int) ;
 int dm_btree_lookup_next_single (struct dm_btree_info*,int ,scalar_t__,scalar_t__*,void*) ;
 int exit_ro_spine (struct ro_spine*) ;
 int init_ro_spine (struct ro_spine*,struct dm_btree_info*) ;
 int le64_to_cpu (int ) ;
 int lower_bound ;

int dm_btree_lookup_next(struct dm_btree_info *info, dm_block_t root,
    uint64_t *keys, uint64_t *rkey, void *value_le)
{
 unsigned level;
 int r = -ENODATA;
 __le64 internal_value_le;
 struct ro_spine spine;

 init_ro_spine(&spine, info);
 for (level = 0; level < info->levels - 1u; level++) {
  r = btree_lookup_raw(&spine, root, keys[level],
         lower_bound, rkey,
         &internal_value_le, sizeof(uint64_t));
  if (r)
   goto out;

  if (*rkey != keys[level]) {
   r = -ENODATA;
   goto out;
  }

  root = le64_to_cpu(internal_value_le);
 }

 r = dm_btree_lookup_next_single(info, root, keys[level], rkey, value_le);
out:
 exit_ro_spine(&spine);
 return r;
}
