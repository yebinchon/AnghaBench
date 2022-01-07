
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int raid_disks; TYPE_2__* mirrors; } ;
struct r1bio {int read_disk; int remaining; struct bio** bios; int state; } ;
struct mddev {int recovery; struct r1conf* private; } ;
struct bio {int * bi_end_io; int bi_opf; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int bdev; int flags; } ;


 int FailFast ;
 int Faulty ;
 int MD_FAILFAST ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_SYNC ;
 int R1BIO_Uptodate ;
 int REQ_OP_WRITE ;
 int abort_sync_write (struct mddev*,struct r1bio*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bio_sectors (struct bio*) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int * end_sync_read ;
 int * end_sync_write ;
 int fix_sync_read_error (struct r1bio*) ;
 int generic_make_request (struct bio*) ;
 int md_sync_acct (int ,int ) ;
 int process_checks (struct r1bio*) ;
 int put_sync_write_buf (struct r1bio*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sync_request_write(struct mddev *mddev, struct r1bio *r1_bio)
{
 struct r1conf *conf = mddev->private;
 int i;
 int disks = conf->raid_disks * 2;
 struct bio *wbio;

 if (!test_bit(R1BIO_Uptodate, &r1_bio->state))

  if (!fix_sync_read_error(r1_bio))
   return;

 if (test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery))
  process_checks(r1_bio);




 atomic_set(&r1_bio->remaining, 1);
 for (i = 0; i < disks ; i++) {
  wbio = r1_bio->bios[i];
  if (wbio->bi_end_io == ((void*)0) ||
      (wbio->bi_end_io == end_sync_read &&
       (i == r1_bio->read_disk ||
        !test_bit(MD_RECOVERY_SYNC, &mddev->recovery))))
   continue;
  if (test_bit(Faulty, &conf->mirrors[i].rdev->flags)) {
   abort_sync_write(mddev, r1_bio);
   continue;
  }

  bio_set_op_attrs(wbio, REQ_OP_WRITE, 0);
  if (test_bit(FailFast, &conf->mirrors[i].rdev->flags))
   wbio->bi_opf |= MD_FAILFAST;

  wbio->bi_end_io = end_sync_write;
  atomic_inc(&r1_bio->remaining);
  md_sync_acct(conf->mirrors[i].rdev->bdev, bio_sectors(wbio));

  generic_make_request(wbio);
 }

 put_sync_write_buf(r1_bio, 1);
}
