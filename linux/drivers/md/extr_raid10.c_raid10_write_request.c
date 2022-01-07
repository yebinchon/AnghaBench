
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r10conf {scalar_t__ reshape_safe; scalar_t__ reshape_progress; scalar_t__ pending_count; int copies; int bio_split; int mddev; TYPE_1__* mirrors; int wait_barrier; } ;
struct r10bio {scalar_t__ sectors; int read_slot; TYPE_3__* devs; int sector; int remaining; struct bio* master_bio; int state; } ;
struct mddev {scalar_t__ reshape_position; int bitmap; int thread; int sb_flags; int sb_wait; scalar_t__ reshape_backwards; int recovery; struct r10conf* private; } ;
struct md_rdev {int raid_disk; int nr_pending; int flags; } ;
struct TYPE_6__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_8__ {scalar_t__ (* area_resyncing ) (struct mddev*,int ,scalar_t__,int ) ;} ;
struct TYPE_7__ {int devnum; scalar_t__ addr; struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_5__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;


 int BIT (int ) ;
 int Blocked ;
 int BlockedBadBlocks ;
 int DEFINE_WAIT (int ) ;
 int Faulty ;
 int GFP_NOIO ;
 int MD_RECOVERY_RESHAPE ;
 int MD_SB_CHANGE_DEVS ;
 int MD_SB_CHANGE_PENDING ;
 int R10BIO_Degraded ;
 int TASK_IDLE ;
 int WRITE ;
 int WriteErrorSeen ;
 int allow_barrier (struct r10conf*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bio_chain (struct bio*,struct bio*) ;
 int bio_end_sector (struct bio*) ;
 int bio_sectors (struct bio*) ;
 struct bio* bio_split (struct bio*,int,int ,int *) ;
 int finish_wait (int *,int *) ;
 int generic_make_request (struct bio*) ;
 int is_badblock (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ;
 scalar_t__ max_queued_requests ;
 int md_bitmap_startwrite (int ,int ,int,int ) ;
 TYPE_4__* md_cluster_ops ;
 int md_wait_for_blocked_rdev (struct md_rdev*,struct mddev*) ;
 int md_wakeup_thread (int ) ;
 scalar_t__ mddev_is_clustered (struct mddev*) ;
 int one_write_done (struct r10bio*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int raid10_find_phys (struct r10conf*,struct r10bio*) ;
 int raid10_log (struct mddev*,char*,...) ;
 int raid10_write_one_disk (struct mddev*,struct r10bio*,struct bio*,int,int) ;
 struct md_rdev* rcu_dereference (struct md_rdev*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int regular_request_wait (struct mddev*,struct r10conf*,struct bio*,scalar_t__) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int set_mask_bits (int *,int ,int) ;
 int smp_mb () ;
 scalar_t__ stub1 (struct mddev*,int ,scalar_t__,int ) ;
 scalar_t__ stub2 (struct mddev*,int ,scalar_t__,int ) ;
 struct md_rdev* test_bit (int ,int *) ;
 scalar_t__ unlikely (struct md_rdev*) ;
 int w ;
 int wait_barrier (struct r10conf*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void raid10_write_request(struct mddev *mddev, struct bio *bio,
     struct r10bio *r10_bio)
{
 struct r10conf *conf = mddev->private;
 int i;
 struct md_rdev *blocked_rdev;
 sector_t sectors;
 int max_sectors;

 if ((mddev_is_clustered(mddev) &&
      md_cluster_ops->area_resyncing(mddev, WRITE,
         bio->bi_iter.bi_sector,
         bio_end_sector(bio)))) {
  DEFINE_WAIT(w);
  for (;;) {
   prepare_to_wait(&conf->wait_barrier,
     &w, TASK_IDLE);
   if (!md_cluster_ops->area_resyncing(mddev, WRITE,
     bio->bi_iter.bi_sector, bio_end_sector(bio)))
    break;
   schedule();
  }
  finish_wait(&conf->wait_barrier, &w);
 }

 sectors = r10_bio->sectors;
 regular_request_wait(mddev, conf, bio, sectors);
 if (test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery) &&
     (mddev->reshape_backwards
      ? (bio->bi_iter.bi_sector < conf->reshape_safe &&
  bio->bi_iter.bi_sector + sectors > conf->reshape_progress)
      : (bio->bi_iter.bi_sector + sectors > conf->reshape_safe &&
  bio->bi_iter.bi_sector < conf->reshape_progress))) {

  mddev->reshape_position = conf->reshape_progress;
  set_mask_bits(&mddev->sb_flags, 0,
         BIT(MD_SB_CHANGE_DEVS) | BIT(MD_SB_CHANGE_PENDING));
  md_wakeup_thread(mddev->thread);
  raid10_log(conf->mddev, "wait reshape metadata");
  wait_event(mddev->sb_wait,
      !test_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags));

  conf->reshape_safe = mddev->reshape_position;
 }

 if (conf->pending_count >= max_queued_requests) {
  md_wakeup_thread(mddev->thread);
  raid10_log(mddev, "wait queued");
  wait_event(conf->wait_barrier,
      conf->pending_count < max_queued_requests);
 }
 r10_bio->read_slot = -1;
 raid10_find_phys(conf, r10_bio);
retry_write:
 blocked_rdev = ((void*)0);
 rcu_read_lock();
 max_sectors = r10_bio->sectors;

 for (i = 0; i < conf->copies; i++) {
  int d = r10_bio->devs[i].devnum;
  struct md_rdev *rdev = rcu_dereference(conf->mirrors[d].rdev);
  struct md_rdev *rrdev = rcu_dereference(
   conf->mirrors[d].replacement);
  if (rdev == rrdev)
   rrdev = ((void*)0);
  if (rdev && unlikely(test_bit(Blocked, &rdev->flags))) {
   atomic_inc(&rdev->nr_pending);
   blocked_rdev = rdev;
   break;
  }
  if (rrdev && unlikely(test_bit(Blocked, &rrdev->flags))) {
   atomic_inc(&rrdev->nr_pending);
   blocked_rdev = rrdev;
   break;
  }
  if (rdev && (test_bit(Faulty, &rdev->flags)))
   rdev = ((void*)0);
  if (rrdev && (test_bit(Faulty, &rrdev->flags)))
   rrdev = ((void*)0);

  r10_bio->devs[i].bio = ((void*)0);
  r10_bio->devs[i].repl_bio = ((void*)0);

  if (!rdev && !rrdev) {
   set_bit(R10BIO_Degraded, &r10_bio->state);
   continue;
  }
  if (rdev && test_bit(WriteErrorSeen, &rdev->flags)) {
   sector_t first_bad;
   sector_t dev_sector = r10_bio->devs[i].addr;
   int bad_sectors;
   int is_bad;

   is_bad = is_badblock(rdev, dev_sector, max_sectors,
          &first_bad, &bad_sectors);
   if (is_bad < 0) {



    atomic_inc(&rdev->nr_pending);
    set_bit(BlockedBadBlocks, &rdev->flags);
    blocked_rdev = rdev;
    break;
   }
   if (is_bad && first_bad <= dev_sector) {

    bad_sectors -= (dev_sector - first_bad);
    if (bad_sectors < max_sectors)



     max_sectors = bad_sectors;
    continue;
   }
   if (is_bad) {
    int good_sectors = first_bad - dev_sector;
    if (good_sectors < max_sectors)
     max_sectors = good_sectors;
   }
  }
  if (rdev) {
   r10_bio->devs[i].bio = bio;
   atomic_inc(&rdev->nr_pending);
  }
  if (rrdev) {
   r10_bio->devs[i].repl_bio = bio;
   atomic_inc(&rrdev->nr_pending);
  }
 }
 rcu_read_unlock();

 if (unlikely(blocked_rdev)) {

  int j;
  int d;

  for (j = 0; j < i; j++) {
   if (r10_bio->devs[j].bio) {
    d = r10_bio->devs[j].devnum;
    rdev_dec_pending(conf->mirrors[d].rdev, mddev);
   }
   if (r10_bio->devs[j].repl_bio) {
    struct md_rdev *rdev;
    d = r10_bio->devs[j].devnum;
    rdev = conf->mirrors[d].replacement;
    if (!rdev) {

     smp_mb();
     rdev = conf->mirrors[d].rdev;
    }
    rdev_dec_pending(rdev, mddev);
   }
  }
  allow_barrier(conf);
  raid10_log(conf->mddev, "wait rdev %d blocked", blocked_rdev->raid_disk);
  md_wait_for_blocked_rdev(blocked_rdev, mddev);
  wait_barrier(conf);
  goto retry_write;
 }

 if (max_sectors < r10_bio->sectors)
  r10_bio->sectors = max_sectors;

 if (r10_bio->sectors < bio_sectors(bio)) {
  struct bio *split = bio_split(bio, r10_bio->sectors,
           GFP_NOIO, &conf->bio_split);
  bio_chain(split, bio);
  allow_barrier(conf);
  generic_make_request(bio);
  wait_barrier(conf);
  bio = split;
  r10_bio->master_bio = bio;
 }

 atomic_set(&r10_bio->remaining, 1);
 md_bitmap_startwrite(mddev->bitmap, r10_bio->sector, r10_bio->sectors, 0);

 for (i = 0; i < conf->copies; i++) {
  if (r10_bio->devs[i].bio)
   raid10_write_one_disk(mddev, r10_bio, bio, 0, i);
  if (r10_bio->devs[i].repl_bio)
   raid10_write_one_disk(mddev, r10_bio, bio, 1, i);
 }
 one_write_done(r10_bio);
}
