
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int raid_disks; TYPE_1__* mirrors; int recovery_disabled; } ;
struct r1bio {size_t read_disk; int sector; int sectors; int state; struct bio** bios; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {int recovery; int recovery_disabled; struct r1conf* private; } ;
struct md_rdev {int corrected_errors; int flags; } ;
struct bio {scalar_t__ bi_status; int * bi_end_io; } ;
typedef int sector_t ;
struct TYPE_4__ {struct page** pages; } ;
struct TYPE_3__ {struct md_rdev* rdev; } ;


 int BDEVNAME_SIZE ;
 int FailFast ;
 int Faulty ;
 int MD_RECOVERY_INTR ;
 int PAGE_SIZE ;
 int R1BIO_Uptodate ;
 int READ ;
 int REQ_OP_READ ;
 int WRITE ;
 int atomic_add (int,int *) ;
 int bio_devname (struct bio*,char*) ;
 int * end_sync_read ;
 int * end_sync_write ;
 TYPE_2__* get_resync_pages (struct bio*) ;
 int md_done_sync (struct mddev*,int,int ) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int mdname (struct mddev*) ;
 int pr_crit_ratelimited (char*,int ,int ,unsigned long long) ;
 int put_buf (struct r1bio*) ;
 scalar_t__ r1_sync_page_io (struct md_rdev*,int,int,struct page*,int ) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int rdev_set_badblocks (struct md_rdev*,int,int,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ sync_page_io (struct md_rdev*,int,int,struct page*,int ,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int fix_sync_read_error(struct r1bio *r1_bio)
{
 struct mddev *mddev = r1_bio->mddev;
 struct r1conf *conf = mddev->private;
 struct bio *bio = r1_bio->bios[r1_bio->read_disk];
 struct page **pages = get_resync_pages(bio)->pages;
 sector_t sect = r1_bio->sector;
 int sectors = r1_bio->sectors;
 int idx = 0;
 struct md_rdev *rdev;

 rdev = conf->mirrors[r1_bio->read_disk].rdev;
 if (test_bit(FailFast, &rdev->flags)) {


  md_error(mddev, rdev);
  if (test_bit(Faulty, &rdev->flags))



   bio->bi_end_io = end_sync_write;
 }

 while(sectors) {
  int s = sectors;
  int d = r1_bio->read_disk;
  int success = 0;
  int start;

  if (s > (PAGE_SIZE>>9))
   s = PAGE_SIZE >> 9;
  do {
   if (r1_bio->bios[d]->bi_end_io == end_sync_read) {




    rdev = conf->mirrors[d].rdev;
    if (sync_page_io(rdev, sect, s<<9,
       pages[idx],
       REQ_OP_READ, 0, 0)) {
     success = 1;
     break;
    }
   }
   d++;
   if (d == conf->raid_disks * 2)
    d = 0;
  } while (!success && d != r1_bio->read_disk);

  if (!success) {
   char b[BDEVNAME_SIZE];
   int abort = 0;





   pr_crit_ratelimited("md/raid1:%s: %s: unrecoverable I/O read error for block %llu\n",
         mdname(mddev), bio_devname(bio, b),
         (unsigned long long)r1_bio->sector);
   for (d = 0; d < conf->raid_disks * 2; d++) {
    rdev = conf->mirrors[d].rdev;
    if (!rdev || test_bit(Faulty, &rdev->flags))
     continue;
    if (!rdev_set_badblocks(rdev, sect, s, 0))
     abort = 1;
   }
   if (abort) {
    conf->recovery_disabled =
     mddev->recovery_disabled;
    set_bit(MD_RECOVERY_INTR, &mddev->recovery);
    md_done_sync(mddev, r1_bio->sectors, 0);
    put_buf(r1_bio);
    return 0;
   }

   sectors -= s;
   sect += s;
   idx++;
   continue;
  }

  start = d;

  while (d != r1_bio->read_disk) {
   if (d == 0)
    d = conf->raid_disks * 2;
   d--;
   if (r1_bio->bios[d]->bi_end_io != end_sync_read)
    continue;
   rdev = conf->mirrors[d].rdev;
   if (r1_sync_page_io(rdev, sect, s,
         pages[idx],
         WRITE) == 0) {
    r1_bio->bios[d]->bi_end_io = ((void*)0);
    rdev_dec_pending(rdev, mddev);
   }
  }
  d = start;
  while (d != r1_bio->read_disk) {
   if (d == 0)
    d = conf->raid_disks * 2;
   d--;
   if (r1_bio->bios[d]->bi_end_io != end_sync_read)
    continue;
   rdev = conf->mirrors[d].rdev;
   if (r1_sync_page_io(rdev, sect, s,
         pages[idx],
         READ) != 0)
    atomic_add(s, &rdev->corrected_errors);
  }
  sectors -= s;
  sect += s;
  idx ++;
 }
 set_bit(R1BIO_Uptodate, &r1_bio->state);
 bio->bi_status = 0;
 return 1;
}
