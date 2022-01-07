
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int metadata; int dev; } ;
struct dm_zone {scalar_t__ wp_block; } ;
struct bio {int dummy; } ;
typedef scalar_t__ sector_t ;


 int ENOSPC ;
 int dmz_bio_block (struct bio*) ;
 unsigned int dmz_bio_blocks (struct bio*) ;
 scalar_t__ dmz_bio_chunk (int ,struct bio*) ;
 scalar_t__ dmz_chunk_block (int ,int ) ;
 int dmz_dev_debug (int ,char*,unsigned long long,char*,int ,unsigned long long,unsigned int) ;
 int dmz_handle_buffered_write (struct dmz_target*,struct dm_zone*,struct bio*,scalar_t__,unsigned int) ;
 int dmz_handle_direct_write (struct dmz_target*,struct dm_zone*,struct bio*,scalar_t__,unsigned int) ;
 int dmz_id (int ,struct dm_zone*) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;

__attribute__((used)) static int dmz_handle_write(struct dmz_target *dmz, struct dm_zone *zone,
       struct bio *bio)
{
 sector_t chunk_block = dmz_chunk_block(dmz->dev, dmz_bio_block(bio));
 unsigned int nr_blocks = dmz_bio_blocks(bio);

 if (!zone)
  return -ENOSPC;

 dmz_dev_debug(dmz->dev, "WRITE chunk %llu -> %s zone %u, block %llu, %u blocks",
        (unsigned long long)dmz_bio_chunk(dmz->dev, bio),
        (dmz_is_rnd(zone) ? "RND" : "SEQ"),
        dmz_id(dmz->metadata, zone),
        (unsigned long long)chunk_block, nr_blocks);

 if (dmz_is_rnd(zone) || chunk_block == zone->wp_block) {





  return dmz_handle_direct_write(dmz, zone, bio, chunk_block, nr_blocks);
 }





 return dmz_handle_buffered_write(dmz, zone, bio, chunk_block, nr_blocks);
}
