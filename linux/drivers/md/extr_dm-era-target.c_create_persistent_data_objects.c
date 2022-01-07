
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int bm; int bdev; } ;


 int DMERR (char*) ;
 int DM_ERA_METADATA_BLOCK_SIZE ;
 int ERA_MAX_CONCURRENT_LOCKS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dm_block_manager_create (int ,int ,int ) ;
 int dm_block_manager_destroy (int ) ;
 int open_or_format_metadata (struct era_metadata*,int) ;

__attribute__((used)) static int create_persistent_data_objects(struct era_metadata *md,
       bool may_format)
{
 int r;

 md->bm = dm_block_manager_create(md->bdev, DM_ERA_METADATA_BLOCK_SIZE,
      ERA_MAX_CONCURRENT_LOCKS);
 if (IS_ERR(md->bm)) {
  DMERR("could not create block manager");
  return PTR_ERR(md->bm);
 }

 r = open_or_format_metadata(md, may_format);
 if (r)
  dm_block_manager_destroy(md->bm);

 return r;
}
