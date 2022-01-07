
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {struct mddev* mddev; TYPE_1__* mirrors; } ;
struct r1bio {size_t read_disk; int sectors; scalar_t__ state; struct bio* master_bio; int sector; struct bio** bios; } ;
struct mddev {scalar_t__ ro; } ;
struct md_rdev {int flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;


 int FailFast ;
 struct bio* IO_BLOCKED ;
 int R1BIO_ReadError ;
 int allow_barrier (struct r1conf*,int ) ;
 int bio_put (struct bio*) ;
 int clear_bit (int ,scalar_t__*) ;
 int fix_read_error (struct r1conf*,size_t,int ,int ) ;
 int freeze_array (struct r1conf*,int) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int raid1_read_request (struct mddev*,struct bio*,int ,struct r1bio*) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 scalar_t__ test_bit (int ,int *) ;
 int unfreeze_array (struct r1conf*) ;

__attribute__((used)) static void handle_read_error(struct r1conf *conf, struct r1bio *r1_bio)
{
 struct mddev *mddev = conf->mddev;
 struct bio *bio;
 struct md_rdev *rdev;

 clear_bit(R1BIO_ReadError, &r1_bio->state);
 bio = r1_bio->bios[r1_bio->read_disk];
 bio_put(bio);
 r1_bio->bios[r1_bio->read_disk] = ((void*)0);

 rdev = conf->mirrors[r1_bio->read_disk].rdev;
 if (mddev->ro == 0
     && !test_bit(FailFast, &rdev->flags)) {
  freeze_array(conf, 1);
  fix_read_error(conf, r1_bio->read_disk,
          r1_bio->sector, r1_bio->sectors);
  unfreeze_array(conf);
 } else if (mddev->ro == 0 && test_bit(FailFast, &rdev->flags)) {
  md_error(mddev, rdev);
 } else {
  r1_bio->bios[r1_bio->read_disk] = IO_BLOCKED;
 }

 rdev_dec_pending(rdev, conf->mddev);
 allow_barrier(conf, r1_bio->sector);
 bio = r1_bio->master_bio;


 r1_bio->state = 0;
 raid1_read_request(mddev, bio, r1_bio->sectors, r1_bio);
}
