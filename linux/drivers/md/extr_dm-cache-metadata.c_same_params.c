
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {scalar_t__ data_block_size; } ;
typedef scalar_t__ sector_t ;


 int DMERR (char*,unsigned long long,unsigned long long) ;

__attribute__((used)) static bool same_params(struct dm_cache_metadata *cmd, sector_t data_block_size)
{
 if (cmd->data_block_size != data_block_size) {
  DMERR("data_block_size (%llu) different from that in metadata (%llu)",
        (unsigned long long) data_block_size,
        (unsigned long long) cmd->data_block_size);
  return 0;
 }

 return 1;
}
