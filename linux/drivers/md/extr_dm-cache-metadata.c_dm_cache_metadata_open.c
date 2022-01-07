
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int EINVAL ;
 struct dm_cache_metadata* ERR_PTR (int ) ;
 int IS_ERR (struct dm_cache_metadata*) ;
 int dm_cache_metadata_close (struct dm_cache_metadata*) ;
 struct dm_cache_metadata* lookup_or_open (struct block_device*,int ,int,size_t,unsigned int) ;
 int same_params (struct dm_cache_metadata*,int ) ;

struct dm_cache_metadata *dm_cache_metadata_open(struct block_device *bdev,
       sector_t data_block_size,
       bool may_format_device,
       size_t policy_hint_size,
       unsigned metadata_version)
{
 struct dm_cache_metadata *cmd = lookup_or_open(bdev, data_block_size, may_format_device,
             policy_hint_size, metadata_version);

 if (!IS_ERR(cmd) && !same_params(cmd, data_block_size)) {
  dm_cache_metadata_close(cmd);
  return ERR_PTR(-EINVAL);
 }

 return cmd;
}
