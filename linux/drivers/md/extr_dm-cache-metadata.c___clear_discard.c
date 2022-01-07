
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int discard_root; int discard_info; } ;
typedef int dm_dblock_t ;


 int dm_bitset_clear_bit (int *,int ,int ,int *) ;
 int from_dblock (int ) ;

__attribute__((used)) static int __clear_discard(struct dm_cache_metadata *cmd, dm_dblock_t b)
{
 return dm_bitset_clear_bit(&cmd->discard_info, cmd->discard_root,
       from_dblock(b), &cmd->discard_root);
}
