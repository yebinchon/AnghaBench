
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dmz_metadata {size_t mblk_primary; TYPE_3__* dev; int mblk_lock; TYPE_1__* sb; } ;
struct dmz_mblock {int page; int state; int ref; } ;
struct TYPE_5__ {int bi_sector; } ;
struct bio {int bi_end_io; struct dmz_mblock* bi_private; TYPE_2__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {int bdev; } ;
struct TYPE_4__ {scalar_t__ block; } ;


 int DMZ_BLOCK_SIZE ;
 int DMZ_META_READING ;
 int EIO ;
 int ENOMEM ;
 struct dmz_mblock* ERR_PTR (int ) ;
 int GFP_NOIO ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int bio_add_page (struct bio*,int ,int ,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int) ;
 struct dmz_mblock* dmz_alloc_mblock (struct dmz_metadata*,scalar_t__) ;
 scalar_t__ dmz_bdev_is_dying (TYPE_3__*) ;
 int dmz_blk2sect (scalar_t__) ;
 int dmz_free_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 struct dmz_mblock* dmz_get_mblock_fast (struct dmz_metadata*,scalar_t__) ;
 int dmz_insert_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 int dmz_mblock_bio_end_io ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static struct dmz_mblock *dmz_get_mblock_slow(struct dmz_metadata *zmd,
           sector_t mblk_no)
{
 struct dmz_mblock *mblk, *m;
 sector_t block = zmd->sb[zmd->mblk_primary].block + mblk_no;
 struct bio *bio;

 if (dmz_bdev_is_dying(zmd->dev))
  return ERR_PTR(-EIO);


 mblk = dmz_alloc_mblock(zmd, mblk_no);
 if (!mblk)
  return ERR_PTR(-ENOMEM);

 bio = bio_alloc(GFP_NOIO, 1);
 if (!bio) {
  dmz_free_mblock(zmd, mblk);
  return ERR_PTR(-ENOMEM);
 }

 spin_lock(&zmd->mblk_lock);





 m = dmz_get_mblock_fast(zmd, mblk_no);
 if (m) {
  spin_unlock(&zmd->mblk_lock);
  dmz_free_mblock(zmd, mblk);
  bio_put(bio);
  return m;
 }

 mblk->ref++;
 set_bit(DMZ_META_READING, &mblk->state);
 dmz_insert_mblock(zmd, mblk);

 spin_unlock(&zmd->mblk_lock);


 bio->bi_iter.bi_sector = dmz_blk2sect(block);
 bio_set_dev(bio, zmd->dev->bdev);
 bio->bi_private = mblk;
 bio->bi_end_io = dmz_mblock_bio_end_io;
 bio_set_op_attrs(bio, REQ_OP_READ, REQ_META | REQ_PRIO);
 bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 submit_bio(bio);

 return mblk;
}
