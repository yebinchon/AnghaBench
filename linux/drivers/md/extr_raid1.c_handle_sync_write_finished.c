
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int raid_disks; int mddev; TYPE_1__* mirrors; } ;
struct r1bio {int sectors; int sector; int state; struct bio** bios; } ;
struct md_rdev {int dummy; } ;
struct bio {scalar_t__ bi_status; int * bi_end_io; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;


 int R1BIO_MadeGood ;
 int R1BIO_WriteError ;
 int md_done_sync (int ,int,int) ;
 int md_error (int ,struct md_rdev*) ;
 int put_buf (struct r1bio*) ;
 int rdev_clear_badblocks (struct md_rdev*,int ,int,int ) ;
 int rdev_set_badblocks (struct md_rdev*,int ,int,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_sync_write_finished(struct r1conf *conf, struct r1bio *r1_bio)
{
 int m;
 int s = r1_bio->sectors;
 for (m = 0; m < conf->raid_disks * 2 ; m++) {
  struct md_rdev *rdev = conf->mirrors[m].rdev;
  struct bio *bio = r1_bio->bios[m];
  if (bio->bi_end_io == ((void*)0))
   continue;
  if (!bio->bi_status &&
      test_bit(R1BIO_MadeGood, &r1_bio->state)) {
   rdev_clear_badblocks(rdev, r1_bio->sector, s, 0);
  }
  if (bio->bi_status &&
      test_bit(R1BIO_WriteError, &r1_bio->state)) {
   if (!rdev_set_badblocks(rdev, r1_bio->sector, s, 0))
    md_error(conf->mddev, rdev);
  }
 }
 put_buf(r1_bio);
 md_done_sync(conf->mddev, s, 1);
}
