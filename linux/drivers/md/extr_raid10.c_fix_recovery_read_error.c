
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r10conf {TYPE_3__* mirrors; } ;
struct r10bio {int sectors; TYPE_2__* devs; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {int recovery; int recovery_disabled; struct r10conf* private; } ;
struct md_rdev {TYPE_1__* mddev; int flags; } ;
struct bio {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_8__ {struct page** pages; } ;
struct TYPE_7__ {int recovery_disabled; struct md_rdev* rdev; } ;
struct TYPE_6__ {int devnum; scalar_t__ addr; struct bio* bio; } ;
struct TYPE_5__ {int recovery; } ;


 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_NEEDED ;
 int PAGE_SIZE ;
 int REQ_OP_READ ;
 int REQ_OP_WRITE ;
 int WantReplacement ;
 int WriteErrorSeen ;
 TYPE_4__* get_resync_pages (struct bio*) ;
 int mdname (struct mddev*) ;
 int pr_notice (char*,int ) ;
 int rdev_set_badblocks (struct md_rdev*,scalar_t__,int,int ) ;
 int set_bit (int ,int *) ;
 int sync_page_io (struct md_rdev*,scalar_t__,int,struct page*,int ,int ,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void fix_recovery_read_error(struct r10bio *r10_bio)
{







 struct mddev *mddev = r10_bio->mddev;
 struct r10conf *conf = mddev->private;
 struct bio *bio = r10_bio->devs[0].bio;
 sector_t sect = 0;
 int sectors = r10_bio->sectors;
 int idx = 0;
 int dr = r10_bio->devs[0].devnum;
 int dw = r10_bio->devs[1].devnum;
 struct page **pages = get_resync_pages(bio)->pages;

 while (sectors) {
  int s = sectors;
  struct md_rdev *rdev;
  sector_t addr;
  int ok;

  if (s > (PAGE_SIZE>>9))
   s = PAGE_SIZE >> 9;

  rdev = conf->mirrors[dr].rdev;
  addr = r10_bio->devs[0].addr + sect,
  ok = sync_page_io(rdev,
      addr,
      s << 9,
      pages[idx],
      REQ_OP_READ, 0, 0);
  if (ok) {
   rdev = conf->mirrors[dw].rdev;
   addr = r10_bio->devs[1].addr + sect;
   ok = sync_page_io(rdev,
       addr,
       s << 9,
       pages[idx],
       REQ_OP_WRITE, 0, 0);
   if (!ok) {
    set_bit(WriteErrorSeen, &rdev->flags);
    if (!test_and_set_bit(WantReplacement,
            &rdev->flags))
     set_bit(MD_RECOVERY_NEEDED,
      &rdev->mddev->recovery);
   }
  }
  if (!ok) {




   rdev_set_badblocks(rdev, addr, s, 0);

   if (rdev != conf->mirrors[dw].rdev) {

    struct md_rdev *rdev2 = conf->mirrors[dw].rdev;
    addr = r10_bio->devs[1].addr + sect;
    ok = rdev_set_badblocks(rdev2, addr, s, 0);
    if (!ok) {

     pr_notice("md/raid10:%s: recovery aborted due to read error\n",
        mdname(mddev));

     conf->mirrors[dw].recovery_disabled
      = mddev->recovery_disabled;
     set_bit(MD_RECOVERY_INTR,
      &mddev->recovery);
     break;
    }
   }
  }

  sectors -= s;
  sect += s;
  idx++;
 }
}
