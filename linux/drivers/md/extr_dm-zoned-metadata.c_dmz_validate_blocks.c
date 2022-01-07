
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* dev; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dm_zone {unsigned int weight; } ;
typedef unsigned int sector_t ;
struct TYPE_3__ {unsigned int zone_nr_blocks; } ;


 unsigned int DMZ_BLOCK_MASK_BITS ;
 scalar_t__ DMZ_BLOCK_SIZE_BITS ;
 scalar_t__ IS_ERR (struct dmz_mblock*) ;
 int PTR_ERR (struct dmz_mblock*) ;
 int WARN_ON (int) ;
 int dmz_dev_debug (TYPE_1__*,char*,int ,unsigned long long,unsigned int) ;
 int dmz_dev_warn (TYPE_1__*,char*,int ,unsigned int,unsigned int) ;
 int dmz_dirty_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 struct dmz_mblock* dmz_get_bitmap (struct dmz_metadata*,struct dm_zone*,unsigned int) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_release_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 unsigned int dmz_set_bits (unsigned long*,unsigned int,unsigned int) ;
 scalar_t__ likely (int) ;
 unsigned int min (unsigned int,scalar_t__) ;

int dmz_validate_blocks(struct dmz_metadata *zmd, struct dm_zone *zone,
   sector_t chunk_block, unsigned int nr_blocks)
{
 unsigned int count, bit, nr_bits;
 unsigned int zone_nr_blocks = zmd->dev->zone_nr_blocks;
 struct dmz_mblock *mblk;
 unsigned int n = 0;

 dmz_dev_debug(zmd->dev, "=> VALIDATE zone %u, block %llu, %u blocks",
        dmz_id(zmd, zone), (unsigned long long)chunk_block,
        nr_blocks);

 WARN_ON(chunk_block + nr_blocks > zone_nr_blocks);

 while (nr_blocks) {

  mblk = dmz_get_bitmap(zmd, zone, chunk_block);
  if (IS_ERR(mblk))
   return PTR_ERR(mblk);


  bit = chunk_block & DMZ_BLOCK_MASK_BITS;
  nr_bits = min(nr_blocks, DMZ_BLOCK_SIZE_BITS - bit);

  count = dmz_set_bits((unsigned long *)mblk->data, bit, nr_bits);
  if (count) {
   dmz_dirty_mblock(zmd, mblk);
   n += count;
  }
  dmz_release_mblock(zmd, mblk);

  nr_blocks -= nr_bits;
  chunk_block += nr_bits;
 }

 if (likely(zone->weight + n <= zone_nr_blocks))
  zone->weight += n;
 else {
  dmz_dev_warn(zmd->dev, "Zone %u: weight %u should be <= %u",
        dmz_id(zmd, zone), zone->weight,
        zone_nr_blocks - n);
  zone->weight = zone_nr_blocks;
 }

 return 0;
}
