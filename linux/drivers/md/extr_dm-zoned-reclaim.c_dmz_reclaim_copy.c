
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {unsigned long flags; int kc_err; int kc; struct dmz_dev* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dmz_dev {int zone_nr_blocks; int flags; int bdev; } ;
struct dm_zone {int wp_block; } ;
struct dm_io_region {void* count; void* sector; int bdev; } ;
typedef int sector_t ;


 int DMZ_BDEV_DYING ;
 int DMZ_RECLAIM_KCOPY ;
 int DM_KCOPYD_WRITE_SEQ ;
 int EIO ;
 int TASK_UNINTERRUPTIBLE ;
 int dm_kcopyd_copy (int ,struct dm_io_region*,int,struct dm_io_region*,unsigned long,int ,struct dmz_reclaim*) ;
 void* dmz_blk2sect (int) ;
 int dmz_first_valid_block (struct dmz_metadata*,struct dm_zone*,int*) ;
 scalar_t__ dmz_is_seq (struct dm_zone*) ;
 int dmz_reclaim_align_wp (struct dmz_reclaim*,struct dm_zone*,int) ;
 int dmz_reclaim_kcopy_end ;
 int dmz_start_block (struct dmz_metadata*,struct dm_zone*) ;
 int set_bit (int ,unsigned long*) ;
 int wait_on_bit_io (unsigned long*,int ,int ) ;

__attribute__((used)) static int dmz_reclaim_copy(struct dmz_reclaim *zrc,
       struct dm_zone *src_zone, struct dm_zone *dst_zone)
{
 struct dmz_metadata *zmd = zrc->metadata;
 struct dmz_dev *dev = zrc->dev;
 struct dm_io_region src, dst;
 sector_t block = 0, end_block;
 sector_t nr_blocks;
 sector_t src_zone_block;
 sector_t dst_zone_block;
 unsigned long flags = 0;
 int ret;

 if (dmz_is_seq(src_zone))
  end_block = src_zone->wp_block;
 else
  end_block = dev->zone_nr_blocks;
 src_zone_block = dmz_start_block(zmd, src_zone);
 dst_zone_block = dmz_start_block(zmd, dst_zone);

 if (dmz_is_seq(dst_zone))
  set_bit(DM_KCOPYD_WRITE_SEQ, &flags);

 while (block < end_block) {
  if (dev->flags & DMZ_BDEV_DYING)
   return -EIO;


  ret = dmz_first_valid_block(zmd, src_zone, &block);
  if (ret <= 0)
   return ret;
  nr_blocks = ret;






  if (dmz_is_seq(dst_zone)) {
   ret = dmz_reclaim_align_wp(zrc, dst_zone, block);
   if (ret)
    return ret;
  }

  src.bdev = dev->bdev;
  src.sector = dmz_blk2sect(src_zone_block + block);
  src.count = dmz_blk2sect(nr_blocks);

  dst.bdev = dev->bdev;
  dst.sector = dmz_blk2sect(dst_zone_block + block);
  dst.count = src.count;


  set_bit(DMZ_RECLAIM_KCOPY, &zrc->flags);
  dm_kcopyd_copy(zrc->kc, &src, 1, &dst, flags,
          dmz_reclaim_kcopy_end, zrc);


  wait_on_bit_io(&zrc->flags, DMZ_RECLAIM_KCOPY,
          TASK_UNINTERRUPTIBLE);
  if (zrc->kc_err)
   return zrc->kc_err;

  block += nr_blocks;
  if (dmz_is_seq(dst_zone))
   dst_zone->wp_block = block;
 }

 return 0;
}
