
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* dev; } ;
struct dm_zone {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ zone_nr_blocks; } ;


 int dmz_first_valid_block (struct dmz_metadata*,struct dm_zone*,scalar_t__*) ;
 int dmz_validate_blocks (struct dmz_metadata*,struct dm_zone*,scalar_t__,unsigned int) ;

int dmz_merge_valid_blocks(struct dmz_metadata *zmd, struct dm_zone *from_zone,
      struct dm_zone *to_zone, sector_t chunk_block)
{
 unsigned int nr_blocks;
 int ret;


 while (chunk_block < zmd->dev->zone_nr_blocks) {

  ret = dmz_first_valid_block(zmd, from_zone, &chunk_block);
  if (ret <= 0)
   return ret;

  nr_blocks = ret;
  ret = dmz_validate_blocks(zmd, to_zone, chunk_block, nr_blocks);
  if (ret)
   return ret;

  chunk_block += nr_blocks;
 }

 return 0;
}
