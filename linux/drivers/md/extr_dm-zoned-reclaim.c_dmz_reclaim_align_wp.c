
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_reclaim {TYPE_1__* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {unsigned int wp_block; } ;
typedef unsigned int sector_t ;
struct TYPE_2__ {int bdev; } ;


 int EIO ;
 int GFP_NOIO ;
 int blkdev_issue_zeroout (int ,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ dmz_blk2sect (unsigned int) ;
 int dmz_dev_err (TYPE_1__*,char*,int ,unsigned long long,unsigned long long,unsigned int,int) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 scalar_t__ dmz_start_sect (struct dmz_metadata*,struct dm_zone*) ;

__attribute__((used)) static int dmz_reclaim_align_wp(struct dmz_reclaim *zrc, struct dm_zone *zone,
    sector_t block)
{
 struct dmz_metadata *zmd = zrc->metadata;
 sector_t wp_block = zone->wp_block;
 unsigned int nr_blocks;
 int ret;

 if (wp_block == block)
  return 0;

 if (wp_block > block)
  return -EIO;





 nr_blocks = block - wp_block;
 ret = blkdev_issue_zeroout(zrc->dev->bdev,
       dmz_start_sect(zmd, zone) + dmz_blk2sect(wp_block),
       dmz_blk2sect(nr_blocks), GFP_NOIO, 0);
 if (ret) {
  dmz_dev_err(zrc->dev,
       "Align zone %u wp %llu to %llu (wp+%u) blocks failed %d",
       dmz_id(zmd, zone), (unsigned long long)wp_block,
       (unsigned long long)block, nr_blocks, ret);
  return ret;
 }

 zone->wp_block = block;

 return 0;
}
