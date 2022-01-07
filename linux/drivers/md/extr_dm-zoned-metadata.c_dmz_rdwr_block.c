
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct dmz_metadata {TYPE_2__* dev; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;
struct TYPE_4__ {int bdev; } ;


 int DMZ_BLOCK_SIZE ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOIO ;
 int REQ_META ;
 int REQ_PRIO ;
 int REQ_SYNC ;
 int bio_add_page (struct bio*,struct page*,int ,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 scalar_t__ dmz_bdev_is_dying (TYPE_2__*) ;
 int dmz_blk2sect (int ) ;
 int submit_bio_wait (struct bio*) ;

__attribute__((used)) static int dmz_rdwr_block(struct dmz_metadata *zmd, int op, sector_t block,
     struct page *page)
{
 struct bio *bio;
 int ret;

 if (dmz_bdev_is_dying(zmd->dev))
  return -EIO;

 bio = bio_alloc(GFP_NOIO, 1);
 if (!bio)
  return -ENOMEM;

 bio->bi_iter.bi_sector = dmz_blk2sect(block);
 bio_set_dev(bio, zmd->dev->bdev);
 bio_set_op_attrs(bio, op, REQ_SYNC | REQ_META | REQ_PRIO);
 bio_add_page(bio, page, DMZ_BLOCK_SIZE, 0);
 ret = submit_bio_wait(bio);
 bio_put(bio);

 return ret;
}
