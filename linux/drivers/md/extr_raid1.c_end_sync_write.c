
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {TYPE_1__* mirrors; } ;
struct r1bio {size_t read_disk; int state; int sectors; int sector; struct mddev* mddev; } ;
struct mddev {int recovery; struct r1conf* private; } ;
struct md_rdev {int flags; } ;
struct bio {int bi_status; } ;
typedef int sector_t ;
struct TYPE_2__ {struct md_rdev* rdev; } ;


 int MD_RECOVERY_NEEDED ;
 int R1BIO_MadeGood ;
 int R1BIO_WriteError ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int abort_sync_write (struct mddev*,struct r1bio*) ;
 size_t find_bio_disk (struct r1bio*,struct bio*) ;
 struct r1bio* get_resync_r1bio (struct bio*) ;
 scalar_t__ is_badblock (struct md_rdev*,int ,int ,int *,int*) ;
 int put_sync_write_buf (struct r1bio*,int) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void end_sync_write(struct bio *bio)
{
 int uptodate = !bio->bi_status;
 struct r1bio *r1_bio = get_resync_r1bio(bio);
 struct mddev *mddev = r1_bio->mddev;
 struct r1conf *conf = mddev->private;
 sector_t first_bad;
 int bad_sectors;
 struct md_rdev *rdev = conf->mirrors[find_bio_disk(r1_bio, bio)].rdev;

 if (!uptodate) {
  abort_sync_write(mddev, r1_bio);
  set_bit(WriteErrorSeen, &rdev->flags);
  if (!test_and_set_bit(WantReplacement, &rdev->flags))
   set_bit(MD_RECOVERY_NEEDED, &
    mddev->recovery);
  set_bit(R1BIO_WriteError, &r1_bio->state);
 } else if (is_badblock(rdev, r1_bio->sector, r1_bio->sectors,
          &first_bad, &bad_sectors) &&
     !is_badblock(conf->mirrors[r1_bio->read_disk].rdev,
    r1_bio->sector,
    r1_bio->sectors,
    &first_bad, &bad_sectors)
  )
  set_bit(R1BIO_MadeGood, &r1_bio->state);

 put_sync_write_buf(r1_bio, uptodate);
}
