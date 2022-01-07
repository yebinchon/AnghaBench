
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_block {int dummy; } ;
struct dm_array_info {int btree_info; } ;
typedef int dm_block_t ;
typedef int __le64 ;


 int __dm_bless_for_disk (int ) ;
 int cpu_to_le64 (int ) ;
 int dm_block_location (struct dm_block*) ;
 int dm_btree_insert (int *,int ,int *,int *,int *) ;

__attribute__((used)) static int insert_ablock(struct dm_array_info *info, uint64_t index,
    struct dm_block *block, dm_block_t *root)
{
 __le64 block_le = cpu_to_le64(dm_block_location(block));

 __dm_bless_for_disk(block_le);
 return dm_btree_insert(&info->btree_info, *root, &index, &block_le, root);
}
