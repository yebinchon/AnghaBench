
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct multipath_bh {size_t path; TYPE_3__* mddev; } ;
struct mpconf {int mddev; TYPE_1__* multipaths; } ;
struct md_rdev {int bdev; } ;
struct TYPE_5__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; int bi_status; TYPE_2__ bi_iter; struct multipath_bh* bi_private; } ;
struct TYPE_6__ {struct mpconf* private; } ;
struct TYPE_4__ {struct md_rdev* rdev; } ;


 int BDEVNAME_SIZE ;
 int REQ_RAHEAD ;
 int bdevname (int ,char*) ;
 int md_error (TYPE_3__*,struct md_rdev*) ;
 int multipath_end_bh_io (struct multipath_bh*,int ) ;
 int multipath_reschedule_retry (struct multipath_bh*) ;
 int pr_info (char*,int ,unsigned long long) ;
 int rdev_dec_pending (struct md_rdev*,int ) ;

__attribute__((used)) static void multipath_end_request(struct bio *bio)
{
 struct multipath_bh *mp_bh = bio->bi_private;
 struct mpconf *conf = mp_bh->mddev->private;
 struct md_rdev *rdev = conf->multipaths[mp_bh->path].rdev;

 if (!bio->bi_status)
  multipath_end_bh_io(mp_bh, 0);
 else if (!(bio->bi_opf & REQ_RAHEAD)) {



  char b[BDEVNAME_SIZE];
  md_error (mp_bh->mddev, rdev);
  pr_info("multipath: %s: rescheduling sector %llu\n",
   bdevname(rdev->bdev,b),
   (unsigned long long)bio->bi_iter.bi_sector);
  multipath_reschedule_retry(mp_bh);
 } else
  multipath_end_bh_io(mp_bh, bio->bi_status);
 rdev_dec_pending(rdev, conf->mddev);
}
