
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r10conf {int bio_split; TYPE_1__* mirrors; } ;
struct r10bio {int read_slot; int sectors; scalar_t__ sector; int state; TYPE_3__* devs; struct bio* master_bio; } ;
struct mddev {scalar_t__ gendisk; int bio_set; struct r10conf* private; } ;
struct md_rdev {int flags; int bdev; } ;
struct TYPE_6__ {scalar_t__ bi_sector; } ;
struct bio {unsigned long bi_opf; TYPE_4__* bi_disk; struct r10bio* bi_private; int bi_end_io; TYPE_2__ bi_iter; } ;
typedef int gfp_t ;
struct TYPE_8__ {int queue; } ;
struct TYPE_7__ {int devnum; scalar_t__ addr; struct md_rdev* rdev; struct bio* bio; } ;
struct TYPE_5__ {int rdev; } ;


 int BDEVNAME_SIZE ;
 int FailFast ;
 int GFP_NOIO ;
 unsigned long MD_FAILFAST ;
 int R10BIO_FailFast ;
 unsigned long REQ_SYNC ;
 int __GFP_HIGH ;
 int allow_barrier (struct r10conf*) ;
 int bdevname (int ,char*) ;
 int bio_chain (struct bio*,struct bio*) ;
 struct bio* bio_clone_fast (struct bio*,int,int *) ;
 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int const,unsigned long const) ;
 struct bio* bio_split (struct bio*,int,int,int *) ;
 scalar_t__ choose_data_offset (struct r10bio*,struct md_rdev*) ;
 int disk_devt (scalar_t__) ;
 int generic_make_request (struct bio*) ;
 int mdname (struct mddev*) ;
 int pr_crit_ratelimited (char*,int ,char*,unsigned long long) ;
 int pr_err_ratelimited (char*,int ,int ,unsigned long long) ;
 int raid10_end_read_request ;
 int raid_end_bio_io (struct r10bio*) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct md_rdev* read_balance (struct r10conf*,struct r10bio*,int*) ;
 int regular_request_wait (struct mddev*,struct r10conf*,struct bio*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_block_bio_remap (int ,struct bio*,int ,scalar_t__) ;
 int wait_barrier (struct r10conf*) ;

__attribute__((used)) static void raid10_read_request(struct mddev *mddev, struct bio *bio,
    struct r10bio *r10_bio)
{
 struct r10conf *conf = mddev->private;
 struct bio *read_bio;
 const int op = bio_op(bio);
 const unsigned long do_sync = (bio->bi_opf & REQ_SYNC);
 int max_sectors;
 struct md_rdev *rdev;
 char b[BDEVNAME_SIZE];
 int slot = r10_bio->read_slot;
 struct md_rdev *err_rdev = ((void*)0);
 gfp_t gfp = GFP_NOIO;

 if (r10_bio->devs[slot].rdev) {







  int disk;




  gfp = GFP_NOIO | __GFP_HIGH;

  rcu_read_lock();
  disk = r10_bio->devs[slot].devnum;
  err_rdev = rcu_dereference(conf->mirrors[disk].rdev);
  if (err_rdev)
   bdevname(err_rdev->bdev, b);
  else {
   strcpy(b, "???");

   err_rdev = r10_bio->devs[slot].rdev;
  }
  rcu_read_unlock();
 }

 regular_request_wait(mddev, conf, bio, r10_bio->sectors);
 rdev = read_balance(conf, r10_bio, &max_sectors);
 if (!rdev) {
  if (err_rdev) {
   pr_crit_ratelimited("md/raid10:%s: %s: unrecoverable I/O read error for block %llu\n",
         mdname(mddev), b,
         (unsigned long long)r10_bio->sector);
  }
  raid_end_bio_io(r10_bio);
  return;
 }
 if (err_rdev)
  pr_err_ratelimited("md/raid10:%s: %s: redirecting sector %llu to another mirror\n",
       mdname(mddev),
       bdevname(rdev->bdev, b),
       (unsigned long long)r10_bio->sector);
 if (max_sectors < bio_sectors(bio)) {
  struct bio *split = bio_split(bio, max_sectors,
           gfp, &conf->bio_split);
  bio_chain(split, bio);
  allow_barrier(conf);
  generic_make_request(bio);
  wait_barrier(conf);
  bio = split;
  r10_bio->master_bio = bio;
  r10_bio->sectors = max_sectors;
 }
 slot = r10_bio->read_slot;

 read_bio = bio_clone_fast(bio, gfp, &mddev->bio_set);

 r10_bio->devs[slot].bio = read_bio;
 r10_bio->devs[slot].rdev = rdev;

 read_bio->bi_iter.bi_sector = r10_bio->devs[slot].addr +
  choose_data_offset(r10_bio, rdev);
 bio_set_dev(read_bio, rdev->bdev);
 read_bio->bi_end_io = raid10_end_read_request;
 bio_set_op_attrs(read_bio, op, do_sync);
 if (test_bit(FailFast, &rdev->flags) &&
     test_bit(R10BIO_FailFast, &r10_bio->state))
         read_bio->bi_opf |= MD_FAILFAST;
 read_bio->bi_private = r10_bio;

 if (mddev->gendisk)
         trace_block_bio_remap(read_bio->bi_disk->queue,
                               read_bio, disk_devt(mddev->gendisk),
                               r10_bio->sector);
 generic_make_request(read_bio);
 return;
}
