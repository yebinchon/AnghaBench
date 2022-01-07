
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_btree_info {int dummy; } ;
typedef int dm_block_t ;


 int ENODATA ;
 int remove_one (struct dm_btree_info*,int ,int *,int ,int *,unsigned int*) ;

int dm_btree_remove_leaves(struct dm_btree_info *info, dm_block_t root,
      uint64_t *first_key, uint64_t end_key,
      dm_block_t *new_root, unsigned *nr_removed)
{
 int r;

 *nr_removed = 0;
 do {
  r = remove_one(info, root, first_key, end_key, &root, nr_removed);
  if (!r)
   (*nr_removed)++;
 } while (!r);

 *new_root = root;
 return r == -ENODATA ? 0 : r;
}
