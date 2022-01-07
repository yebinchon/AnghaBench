
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* dev; } ;
struct dmz_mblock {void* data; } ;
struct dm_zone {int weight; } ;
typedef unsigned int sector_t ;
struct TYPE_2__ {unsigned int zone_nr_blocks; } ;


 unsigned int DMZ_BLOCK_MASK_BITS ;
 scalar_t__ DMZ_BLOCK_SIZE_BITS ;
 scalar_t__ IS_ERR (struct dmz_mblock*) ;
 scalar_t__ dmz_count_bits (void*,unsigned int,unsigned int) ;
 struct dmz_mblock* dmz_get_bitmap (struct dmz_metadata*,struct dm_zone*,unsigned int) ;
 int dmz_release_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 unsigned int min (unsigned int,scalar_t__) ;

__attribute__((used)) static void dmz_get_zone_weight(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 struct dmz_mblock *mblk;
 sector_t chunk_block = 0;
 unsigned int bit, nr_bits;
 unsigned int nr_blocks = zmd->dev->zone_nr_blocks;
 void *bitmap;
 int n = 0;

 while (nr_blocks) {

  mblk = dmz_get_bitmap(zmd, zone, chunk_block);
  if (IS_ERR(mblk)) {
   n = 0;
   break;
  }


  bitmap = mblk->data;
  bit = chunk_block & DMZ_BLOCK_MASK_BITS;
  nr_bits = min(nr_blocks, DMZ_BLOCK_SIZE_BITS - bit);
  n += dmz_count_bits(bitmap, bit, nr_bits);

  dmz_release_mblock(zmd, mblk);

  nr_blocks -= nr_bits;
  chunk_block += nr_bits;
 }

 zone->weight = n;
}
