
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int nr_map_blocks; int zone_nr_bitmap_blocks; } ;
struct dmz_mblock {int dummy; } ;
struct dm_zone {int dummy; } ;
typedef int sector_t ;


 int DMZ_BLOCK_SHIFT_BITS ;
 struct dmz_mblock* dmz_get_mblock (struct dmz_metadata*,int) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;

__attribute__((used)) static struct dmz_mblock *dmz_get_bitmap(struct dmz_metadata *zmd,
      struct dm_zone *zone,
      sector_t chunk_block)
{
 sector_t bitmap_block = 1 + zmd->nr_map_blocks +
  (sector_t)(dmz_id(zmd, zone) * zmd->zone_nr_bitmap_blocks) +
  (chunk_block >> DMZ_BLOCK_SHIFT_BITS);

 return dmz_get_mblock(zmd, bitmap_block);
}
