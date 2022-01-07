
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct dmz_target {struct dmz_dev* dev; int flush_work; int flush_wq; int flush_lock; int flush_list; } ;
struct dmz_dev {int zone_nr_sectors; int bdev; } ;
struct dmz_bioctx {int ref; struct bio* bio; int * zone; struct dmz_target* target; } ;
struct dm_target {struct dmz_target* private; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef unsigned int sector_t ;


 unsigned int DMZ_BLOCK_SECTORS_MASK ;
 int DM_MAPIO_KILL ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_REQUEUE ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ REQ_OP_WRITE ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 unsigned int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int dm_accept_partial_bio (struct bio*,unsigned int) ;
 struct dmz_bioctx* dm_per_bio_data (struct bio*,int) ;
 scalar_t__ dmz_bdev_is_dying (struct dmz_dev*) ;
 int dmz_bio_block (struct bio*) ;
 scalar_t__ dmz_bio_blocks (struct bio*) ;
 scalar_t__ dmz_bio_chunk (struct dmz_dev*,struct bio*) ;
 scalar_t__ dmz_chunk_block (struct dmz_dev*,int ) ;
 int dmz_dev_debug (struct dmz_dev*,char*,scalar_t__,unsigned long long,int,...) ;
 int dmz_queue_chunk_work (struct dmz_target*,struct bio*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dmz_map(struct dm_target *ti, struct bio *bio)
{
 struct dmz_target *dmz = ti->private;
 struct dmz_dev *dev = dmz->dev;
 struct dmz_bioctx *bioctx = dm_per_bio_data(bio, sizeof(struct dmz_bioctx));
 sector_t sector = bio->bi_iter.bi_sector;
 unsigned int nr_sectors = bio_sectors(bio);
 sector_t chunk_sector;
 int ret;

 if (dmz_bdev_is_dying(dmz->dev))
  return DM_MAPIO_KILL;

 dmz_dev_debug(dev, "BIO op %d sector %llu + %u => chunk %llu, block %llu, %u blocks",
        bio_op(bio), (unsigned long long)sector, nr_sectors,
        (unsigned long long)dmz_bio_chunk(dmz->dev, bio),
        (unsigned long long)dmz_chunk_block(dmz->dev, dmz_bio_block(bio)),
        (unsigned int)dmz_bio_blocks(bio));

 bio_set_dev(bio, dev->bdev);

 if (!nr_sectors && bio_op(bio) != REQ_OP_WRITE)
  return DM_MAPIO_REMAPPED;


 if ((nr_sectors & DMZ_BLOCK_SECTORS_MASK) || (sector & DMZ_BLOCK_SECTORS_MASK))
  return DM_MAPIO_KILL;


 bioctx->target = dmz;
 bioctx->zone = ((void*)0);
 bioctx->bio = bio;
 refcount_set(&bioctx->ref, 1);


 if (!nr_sectors && bio_op(bio) == REQ_OP_WRITE) {
  spin_lock(&dmz->flush_lock);
  bio_list_add(&dmz->flush_list, bio);
  spin_unlock(&dmz->flush_lock);
  mod_delayed_work(dmz->flush_wq, &dmz->flush_work, 0);
  return DM_MAPIO_SUBMITTED;
 }


 chunk_sector = sector & (dev->zone_nr_sectors - 1);
 if (chunk_sector + nr_sectors > dev->zone_nr_sectors)
  dm_accept_partial_bio(bio, dev->zone_nr_sectors - chunk_sector);


 ret = dmz_queue_chunk_work(dmz, bio);
 if (ret) {
  dmz_dev_debug(dmz->dev,
         "BIO op %d, can't process chunk %llu, err %i\n",
         bio_op(bio), (u64)dmz_bio_chunk(dmz->dev, bio),
         ret);
  return DM_MAPIO_REQUEUE;
 }

 return DM_MAPIO_SUBMITTED;
}
