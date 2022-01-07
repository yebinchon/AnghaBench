
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {scalar_t__ wp_block; struct dm_zone* bzone; } ;
struct bio {int dummy; } ;
typedef scalar_t__ sector_t ;


 int EROFS ;
 scalar_t__ dmz_bio_block (struct bio*) ;
 unsigned int dmz_bio_blocks (struct bio*) ;
 scalar_t__ dmz_bio_chunk (int ,struct bio*) ;
 scalar_t__ dmz_chunk_block (int ,scalar_t__) ;
 int dmz_dev_debug (int ,char*,unsigned long long,int ,unsigned long long,unsigned int) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_invalidate_blocks (struct dmz_metadata*,struct dm_zone*,scalar_t__,unsigned int) ;
 scalar_t__ dmz_is_readonly (struct dm_zone*) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;

__attribute__((used)) static int dmz_handle_discard(struct dmz_target *dmz, struct dm_zone *zone,
         struct bio *bio)
{
 struct dmz_metadata *zmd = dmz->metadata;
 sector_t block = dmz_bio_block(bio);
 unsigned int nr_blocks = dmz_bio_blocks(bio);
 sector_t chunk_block = dmz_chunk_block(dmz->dev, block);
 int ret = 0;


 if (!zone)
  return 0;

 if (dmz_is_readonly(zone))
  return -EROFS;

 dmz_dev_debug(dmz->dev, "DISCARD chunk %llu -> zone %u, block %llu, %u blocks",
        (unsigned long long)dmz_bio_chunk(dmz->dev, bio),
        dmz_id(zmd, zone),
        (unsigned long long)chunk_block, nr_blocks);





 if (dmz_is_rnd(zone) || chunk_block < zone->wp_block)
  ret = dmz_invalidate_blocks(zmd, zone, chunk_block, nr_blocks);
 if (ret == 0 && zone->bzone)
  ret = dmz_invalidate_blocks(zmd, zone->bzone,
         chunk_block, nr_blocks);
 return ret;
}
