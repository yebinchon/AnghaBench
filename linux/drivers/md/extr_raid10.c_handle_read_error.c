
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int dummy; } ;
struct r10bio {int read_slot; int master_bio; scalar_t__ state; TYPE_1__* devs; } ;
struct mddev {scalar_t__ ro; struct r10conf* private; } ;
struct md_rdev {int flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio* bio; struct md_rdev* rdev; } ;


 int FailFast ;
 struct bio* IO_BLOCKED ;
 int allow_barrier (struct r10conf*) ;
 int bio_put (struct bio*) ;
 int fix_read_error (struct r10conf*,struct mddev*,struct r10bio*) ;
 int freeze_array (struct r10conf*,int) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int raid10_read_request (struct mddev*,int ,struct r10bio*) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int test_bit (int ,int *) ;
 int unfreeze_array (struct r10conf*) ;

__attribute__((used)) static void handle_read_error(struct mddev *mddev, struct r10bio *r10_bio)
{
 int slot = r10_bio->read_slot;
 struct bio *bio;
 struct r10conf *conf = mddev->private;
 struct md_rdev *rdev = r10_bio->devs[slot].rdev;
 bio = r10_bio->devs[slot].bio;
 bio_put(bio);
 r10_bio->devs[slot].bio = ((void*)0);

 if (mddev->ro)
  r10_bio->devs[slot].bio = IO_BLOCKED;
 else if (!test_bit(FailFast, &rdev->flags)) {
  freeze_array(conf, 1);
  fix_read_error(conf, mddev, r10_bio);
  unfreeze_array(conf);
 } else
  md_error(mddev, rdev);

 rdev_dec_pending(rdev, mddev);
 allow_barrier(conf);
 r10_bio->state = 0;
 raid10_read_request(mddev, r10_bio->master_bio, r10_bio);
}
