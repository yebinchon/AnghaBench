
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct dm_block {int dummy; } ;
struct dm_array_info {int btree_info; } ;
struct array_block {int dummy; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int __reinsert_ablock (struct dm_array_info*,unsigned int,struct dm_block*,int ,int *) ;
 int __shadow_ablock (struct dm_array_info*,int ,struct dm_block**,struct array_block**) ;
 int dm_btree_lookup (int *,int ,unsigned int*,int *) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int shadow_ablock(struct dm_array_info *info, dm_block_t *root,
    unsigned index, struct dm_block **block,
    struct array_block **ab)
{
 int r;
 uint64_t key = index;
 dm_block_t b;
 __le64 block_le;

 r = dm_btree_lookup(&info->btree_info, *root, &key, &block_le);
 if (r)
  return r;
 b = le64_to_cpu(block_le);

 r = __shadow_ablock(info, b, block, ab);
 if (r)
  return r;

 return __reinsert_ablock(info, index, *block, b, root);
}
