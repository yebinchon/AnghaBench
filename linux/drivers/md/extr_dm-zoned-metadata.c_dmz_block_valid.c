
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* dev; } ;
struct dm_zone {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ zone_nr_blocks; } ;


 int dmz_test_block (struct dmz_metadata*,struct dm_zone*,scalar_t__) ;
 int dmz_to_next_set_block (struct dmz_metadata*,struct dm_zone*,scalar_t__,scalar_t__,int ) ;

int dmz_block_valid(struct dmz_metadata *zmd, struct dm_zone *zone,
      sector_t chunk_block)
{
 int valid;

 valid = dmz_test_block(zmd, zone, chunk_block);
 if (valid <= 0)
  return valid;


 return dmz_to_next_set_block(zmd, zone, chunk_block,
         zmd->dev->zone_nr_blocks - chunk_block, 0);
}
