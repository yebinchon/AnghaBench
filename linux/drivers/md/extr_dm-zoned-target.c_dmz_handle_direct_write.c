
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {struct dm_zone* bzone; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int EROFS ;
 int dmz_invalidate_blocks (struct dmz_metadata*,struct dm_zone*,int ,unsigned int) ;
 scalar_t__ dmz_is_readonly (struct dm_zone*) ;
 int dmz_submit_bio (struct dmz_target*,struct dm_zone*,struct bio*,int ,unsigned int) ;
 int dmz_validate_blocks (struct dmz_metadata*,struct dm_zone*,int ,unsigned int) ;

__attribute__((used)) static int dmz_handle_direct_write(struct dmz_target *dmz,
       struct dm_zone *zone, struct bio *bio,
       sector_t chunk_block,
       unsigned int nr_blocks)
{
 struct dmz_metadata *zmd = dmz->metadata;
 struct dm_zone *bzone = zone->bzone;
 int ret;

 if (dmz_is_readonly(zone))
  return -EROFS;


 ret = dmz_submit_bio(dmz, zone, bio, chunk_block, nr_blocks);
 if (ret)
  return ret;





 ret = dmz_validate_blocks(zmd, zone, chunk_block, nr_blocks);
 if (ret == 0 && bzone)
  ret = dmz_invalidate_blocks(zmd, bzone, chunk_block, nr_blocks);

 return ret;
}
