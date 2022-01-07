
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct mddev {int pending_writes; int flags; } ;
struct md_rdev {int flags; scalar_t__ bdev; scalar_t__ meta_bdev; int nr_pending; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; int bi_end_io; struct md_rdev* bi_private; TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int FailFast ;
 int Faulty ;
 int LastDev ;
 int MD_FAILFAST ;
 int MD_FAILFAST_SUPPORTED ;
 int REQ_FUA ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int atomic_inc (int *) ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 int bio_set_dev (struct bio*,scalar_t__) ;
 struct bio* md_bio_alloc_sync (struct mddev*) ;
 int submit_bio (struct bio*) ;
 int super_written ;
 scalar_t__ test_bit (int ,int *) ;

void md_super_write(struct mddev *mddev, struct md_rdev *rdev,
     sector_t sector, int size, struct page *page)
{






 struct bio *bio;
 int ff = 0;

 if (!page)
  return;

 if (test_bit(Faulty, &rdev->flags))
  return;

 bio = md_bio_alloc_sync(mddev);

 atomic_inc(&rdev->nr_pending);

 bio_set_dev(bio, rdev->meta_bdev ? rdev->meta_bdev : rdev->bdev);
 bio->bi_iter.bi_sector = sector;
 bio_add_page(bio, page, size, 0);
 bio->bi_private = rdev;
 bio->bi_end_io = super_written;

 if (test_bit(MD_FAILFAST_SUPPORTED, &mddev->flags) &&
     test_bit(FailFast, &rdev->flags) &&
     !test_bit(LastDev, &rdev->flags))
  ff = MD_FAILFAST;
 bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH | REQ_FUA | ff;

 atomic_inc(&mddev->pending_writes);
 submit_bio(bio);
}
