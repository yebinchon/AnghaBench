
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


 int dm_btree_lookup (int *,int ,unsigned int*,int *) ;
 int get_ablock (struct dm_array_info*,int ,struct dm_block**,struct array_block**) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int lookup_ablock(struct dm_array_info *info, dm_block_t root,
    unsigned index, struct dm_block **block,
    struct array_block **ab)
{
 int r;
 uint64_t key = index;
 __le64 block_le;

 r = dm_btree_lookup(&info->btree_info, root, &key, &block_le);
 if (r)
  return r;

 return get_ablock(info, le64_to_cpu(block_le), block, ab);
}
