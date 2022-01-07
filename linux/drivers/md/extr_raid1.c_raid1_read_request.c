
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct raid1_info {TYPE_3__* rdev; } ;
struct r1conf {int bio_split; struct raid1_info* mirrors; } ;
struct r1bio {size_t read_disk; int sectors; scalar_t__ sector; int state; struct bio** bios; struct bio* master_bio; } ;
struct mddev {scalar_t__ gendisk; int bio_set; struct bitmap* bitmap; struct r1conf* private; } ;
struct md_rdev {int bdev; } ;
struct bitmap {int behind_writes; int behind_wait; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {unsigned long bi_opf; TYPE_2__* bi_disk; struct r1bio* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
typedef int gfp_t ;
struct TYPE_6__ {int flags; int bdev; scalar_t__ data_offset; } ;
struct TYPE_5__ {int queue; } ;


 int BDEVNAME_SIZE ;
 int FailFast ;
 int GFP_NOIO ;
 unsigned long MD_FAILFAST ;
 int R1BIO_FailFast ;
 unsigned long REQ_SYNC ;
 int WriteMostly ;
 int __GFP_HIGH ;
 struct r1bio* alloc_r1bio (struct mddev*,struct bio*) ;
 scalar_t__ atomic_read (int *) ;
 int bdevname (int ,char*) ;
 int bio_chain (struct bio*,struct bio*) ;
 struct bio* bio_clone_fast (struct bio*,int,int *) ;
 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int const,unsigned long const) ;
 struct bio* bio_split (struct bio*,int,int,int *) ;
 int disk_devt (scalar_t__) ;
 int generic_make_request (struct bio*) ;
 int init_r1bio (struct r1bio*,struct mddev*,struct bio*) ;
 int mdname (struct mddev*) ;
 int pr_crit_ratelimited (char*,int ,char*,unsigned long long) ;
 int pr_info_ratelimited (char*,int ,unsigned long long,int ) ;
 int raid1_end_read_request ;
 int raid1_log (struct mddev*,char*) ;
 int raid_end_bio_io (struct r1bio*) ;
 struct md_rdev* rcu_dereference (TYPE_3__*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_balance (struct r1conf*,struct r1bio*,int*) ;
 int strcpy (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_block_bio_remap (int ,struct bio*,int ,scalar_t__) ;
 int wait_event (int ,int) ;
 int wait_read_barrier (struct r1conf*,scalar_t__) ;

__attribute__((used)) static void raid1_read_request(struct mddev *mddev, struct bio *bio,
          int max_read_sectors, struct r1bio *r1_bio)
{
 struct r1conf *conf = mddev->private;
 struct raid1_info *mirror;
 struct bio *read_bio;
 struct bitmap *bitmap = mddev->bitmap;
 const int op = bio_op(bio);
 const unsigned long do_sync = (bio->bi_opf & REQ_SYNC);
 int max_sectors;
 int rdisk;
 bool print_msg = !!r1_bio;
 char b[BDEVNAME_SIZE];






 gfp_t gfp = r1_bio ? (GFP_NOIO | __GFP_HIGH) : GFP_NOIO;

 if (print_msg) {

  struct md_rdev *rdev;
  rcu_read_lock();
  rdev = rcu_dereference(conf->mirrors[r1_bio->read_disk].rdev);
  if (rdev)
   bdevname(rdev->bdev, b);
  else
   strcpy(b, "???");
  rcu_read_unlock();
 }





 wait_read_barrier(conf, bio->bi_iter.bi_sector);

 if (!r1_bio)
  r1_bio = alloc_r1bio(mddev, bio);
 else
  init_r1bio(r1_bio, mddev, bio);
 r1_bio->sectors = max_read_sectors;





 rdisk = read_balance(conf, r1_bio, &max_sectors);

 if (rdisk < 0) {

  if (print_msg) {
   pr_crit_ratelimited("md/raid1:%s: %s: unrecoverable I/O read error for block %llu\n",
         mdname(mddev),
         b,
         (unsigned long long)r1_bio->sector);
  }
  raid_end_bio_io(r1_bio);
  return;
 }
 mirror = conf->mirrors + rdisk;

 if (print_msg)
  pr_info_ratelimited("md/raid1:%s: redirecting sector %llu to other mirror: %s\n",
        mdname(mddev),
        (unsigned long long)r1_bio->sector,
        bdevname(mirror->rdev->bdev, b));

 if (test_bit(WriteMostly, &mirror->rdev->flags) &&
     bitmap) {




  raid1_log(mddev, "wait behind writes");
  wait_event(bitmap->behind_wait,
      atomic_read(&bitmap->behind_writes) == 0);
 }

 if (max_sectors < bio_sectors(bio)) {
  struct bio *split = bio_split(bio, max_sectors,
           gfp, &conf->bio_split);
  bio_chain(split, bio);
  generic_make_request(bio);
  bio = split;
  r1_bio->master_bio = bio;
  r1_bio->sectors = max_sectors;
 }

 r1_bio->read_disk = rdisk;

 read_bio = bio_clone_fast(bio, gfp, &mddev->bio_set);

 r1_bio->bios[rdisk] = read_bio;

 read_bio->bi_iter.bi_sector = r1_bio->sector +
  mirror->rdev->data_offset;
 bio_set_dev(read_bio, mirror->rdev->bdev);
 read_bio->bi_end_io = raid1_end_read_request;
 bio_set_op_attrs(read_bio, op, do_sync);
 if (test_bit(FailFast, &mirror->rdev->flags) &&
     test_bit(R1BIO_FailFast, &r1_bio->state))
         read_bio->bi_opf |= MD_FAILFAST;
 read_bio->bi_private = r1_bio;

 if (mddev->gendisk)
         trace_block_bio_remap(read_bio->bi_disk->queue, read_bio,
    disk_devt(mddev->gendisk), r1_bio->sector);

 generic_make_request(read_bio);
}
