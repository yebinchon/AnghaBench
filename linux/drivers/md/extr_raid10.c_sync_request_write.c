
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resync_pages {struct r10bio* raid_bio; struct page** pages; } ;
struct r10conf {int copies; TYPE_3__* mirrors; } ;
struct r10bio {int sectors; int remaining; TYPE_4__* devs; } ;
struct page {int dummy; } ;
struct mddev {int recovery; int resync_mismatches; struct r10conf* private; } ;
struct md_rdev {int bdev; scalar_t__ data_offset; int flags; int nr_pending; int mddev; } ;
struct TYPE_6__ {int bi_size; int bi_sector; scalar_t__ bi_idx; } ;
struct bio {scalar_t__ bi_end_io; TYPE_2__ bi_iter; int bi_opf; struct resync_pages* bi_private; int bi_status; } ;
struct TYPE_8__ {int devnum; struct bio* bio; struct bio* repl_bio; int addr; } ;
struct TYPE_7__ {TYPE_1__* replacement; struct md_rdev* rdev; } ;
struct TYPE_5__ {int bdev; } ;


 int FailFast ;
 int MD_FAILFAST ;
 int MD_RECOVERY_CHECK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int REQ_OP_WRITE ;
 int atomic64_add (int,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bio_copy_data (struct bio*,struct bio*) ;
 int bio_reset (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 scalar_t__ end_sync_read ;
 scalar_t__ end_sync_write ;
 int generic_make_request (struct bio*) ;
 struct resync_pages* get_resync_pages (struct bio*) ;
 int md_bio_reset_resync_pages (struct bio*,struct resync_pages*,int) ;
 int md_done_sync (struct mddev*,int,int) ;
 int md_error (int ,struct md_rdev*) ;
 int md_sync_acct (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int page_address (struct page*) ;
 int put_buf (struct r10bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sync_request_write(struct mddev *mddev, struct r10bio *r10_bio)
{
 struct r10conf *conf = mddev->private;
 int i, first;
 struct bio *tbio, *fbio;
 int vcnt;
 struct page **tpages, **fpages;

 atomic_set(&r10_bio->remaining, 1);


 for (i=0; i<conf->copies; i++)
  if (!r10_bio->devs[i].bio->bi_status)
   break;

 if (i == conf->copies)
  goto done;

 first = i;
 fbio = r10_bio->devs[i].bio;
 fbio->bi_iter.bi_size = r10_bio->sectors << 9;
 fbio->bi_iter.bi_idx = 0;
 fpages = get_resync_pages(fbio)->pages;

 vcnt = (r10_bio->sectors + (PAGE_SIZE >> 9) - 1) >> (PAGE_SHIFT - 9);

 for (i=0 ; i < conf->copies ; i++) {
  int j, d;
  struct md_rdev *rdev;
  struct resync_pages *rp;

  tbio = r10_bio->devs[i].bio;

  if (tbio->bi_end_io != end_sync_read)
   continue;
  if (i == first)
   continue;

  tpages = get_resync_pages(tbio)->pages;
  d = r10_bio->devs[i].devnum;
  rdev = conf->mirrors[d].rdev;
  if (!r10_bio->devs[i].bio->bi_status) {




   int sectors = r10_bio->sectors;
   for (j = 0; j < vcnt; j++) {
    int len = PAGE_SIZE;
    if (sectors < (len / 512))
     len = sectors * 512;
    if (memcmp(page_address(fpages[j]),
        page_address(tpages[j]),
        len))
     break;
    sectors -= len/512;
   }
   if (j == vcnt)
    continue;
   atomic64_add(r10_bio->sectors, &mddev->resync_mismatches);
   if (test_bit(MD_RECOVERY_CHECK, &mddev->recovery))

    continue;
  } else if (test_bit(FailFast, &rdev->flags)) {

   md_error(rdev->mddev, rdev);
   continue;
  }





  rp = get_resync_pages(tbio);
  bio_reset(tbio);

  md_bio_reset_resync_pages(tbio, rp, fbio->bi_iter.bi_size);

  rp->raid_bio = r10_bio;
  tbio->bi_private = rp;
  tbio->bi_iter.bi_sector = r10_bio->devs[i].addr;
  tbio->bi_end_io = end_sync_write;
  bio_set_op_attrs(tbio, REQ_OP_WRITE, 0);

  bio_copy_data(tbio, fbio);

  atomic_inc(&conf->mirrors[d].rdev->nr_pending);
  atomic_inc(&r10_bio->remaining);
  md_sync_acct(conf->mirrors[d].rdev->bdev, bio_sectors(tbio));

  if (test_bit(FailFast, &conf->mirrors[d].rdev->flags))
   tbio->bi_opf |= MD_FAILFAST;
  tbio->bi_iter.bi_sector += conf->mirrors[d].rdev->data_offset;
  bio_set_dev(tbio, conf->mirrors[d].rdev->bdev);
  generic_make_request(tbio);
 }




 for (i = 0; i < conf->copies; i++) {
  int d;

  tbio = r10_bio->devs[i].repl_bio;
  if (!tbio || !tbio->bi_end_io)
   continue;
  if (r10_bio->devs[i].bio->bi_end_io != end_sync_write
      && r10_bio->devs[i].bio != fbio)
   bio_copy_data(tbio, fbio);
  d = r10_bio->devs[i].devnum;
  atomic_inc(&r10_bio->remaining);
  md_sync_acct(conf->mirrors[d].replacement->bdev,
        bio_sectors(tbio));
  generic_make_request(tbio);
 }

done:
 if (atomic_dec_and_test(&r10_bio->remaining)) {
  md_done_sync(mddev, r10_bio->sectors, 1);
  put_buf(r10_bio);
 }
}
