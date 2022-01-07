
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resync_pages {int dummy; } ;
struct r1conf {scalar_t__ fullsync; scalar_t__ cluster_sync_low; scalar_t__ cluster_sync_high; int raid_disks; int recovery_disabled; TYPE_2__* mirrors; int * nr_waiting; int r1buf_pool; } ;
struct r1bio {int read_disk; struct bio** bios; int remaining; scalar_t__ sectors; scalar_t__ state; scalar_t__ sector; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {scalar_t__ dev_sectors; scalar_t__ curr_resync; scalar_t__ recovery_cp; scalar_t__ resync_max; scalar_t__ curr_resync_completed; scalar_t__ recovery; int * bitmap; int recovery_disabled; scalar_t__ sb_flags; struct r1conf* private; } ;
struct md_rdev {scalar_t__ data_offset; scalar_t__ flags; int bdev; int nr_pending; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {scalar_t__ bi_end_io; int bi_opf; TYPE_1__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {int (* resync_info_update ) (struct mddev*,scalar_t__,scalar_t__) ;} ;
struct TYPE_5__ {struct md_rdev* rdev; } ;


 scalar_t__ CLUSTER_RESYNC_WINDOW_SECTORS ;
 int FailFast ;
 int Faulty ;
 int In_sync ;
 int MD_FAILFAST ;
 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_SYNC ;
 int MD_SB_CHANGE_DEVS ;
 scalar_t__ MaxSector ;
 int PAGE_SIZE ;
 int R1BIO_IsSync ;
 int REQ_OP_READ ;
 int REQ_OP_WRITE ;
 int RESYNC_PAGES ;
 int RESYNC_SECTORS ;
 int WriteErrorSeen ;
 int WriteMostly ;
 int align_to_barrier_unit_end (scalar_t__,int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int close_sync (struct r1conf*) ;
 scalar_t__ end_sync_read ;
 scalar_t__ end_sync_write ;
 int generic_make_request (struct bio*) ;
 struct resync_pages* get_resync_pages (struct bio*) ;
 scalar_t__ init_resync (struct r1conf*) ;
 scalar_t__ is_badblock (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ;
 int md_bitmap_close_sync (int *) ;
 int md_bitmap_cond_end_sync (int *,scalar_t__,int) ;
 int md_bitmap_end_sync (int *,scalar_t__,scalar_t__*,int) ;
 int md_bitmap_start_sync (int *,scalar_t__,scalar_t__*,int) ;
 TYPE_3__* md_cluster_ops ;
 int md_sync_acct_bio (struct bio*,scalar_t__) ;
 scalar_t__ mddev_is_clustered (struct mddev*) ;
 int mempool_initialized (int *) ;
 int put_buf (struct r1bio*) ;
 struct r1bio* raid1_alloc_init_r1buf (struct r1conf*) ;
 scalar_t__ raise_barrier (struct r1conf*,scalar_t__) ;
 struct md_rdev* rcu_dereference (struct md_rdev*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rdev_set_badblocks (struct md_rdev*,scalar_t__,int,int ) ;
 struct page* resync_fetch_page (struct resync_pages*,int) ;
 int schedule_timeout_uninterruptible (int) ;
 int sector_to_idx (scalar_t__) ;
 int set_bit (int ,scalar_t__*) ;
 int stub1 (struct mddev*,scalar_t__,scalar_t__) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

__attribute__((used)) static sector_t raid1_sync_request(struct mddev *mddev, sector_t sector_nr,
       int *skipped)
{
 struct r1conf *conf = mddev->private;
 struct r1bio *r1_bio;
 struct bio *bio;
 sector_t max_sector, nr_sectors;
 int disk = -1;
 int i;
 int wonly = -1;
 int write_targets = 0, read_targets = 0;
 sector_t sync_blocks;
 int still_degraded = 0;
 int good_sectors = RESYNC_SECTORS;
 int min_bad = 0;
 int idx = sector_to_idx(sector_nr);
 int page_idx = 0;

 if (!mempool_initialized(&conf->r1buf_pool))
  if (init_resync(conf))
   return 0;

 max_sector = mddev->dev_sectors;
 if (sector_nr >= max_sector) {





  if (mddev->curr_resync < max_sector)
   md_bitmap_end_sync(mddev->bitmap, mddev->curr_resync,
        &sync_blocks, 1);
  else
   conf->fullsync = 0;

  md_bitmap_close_sync(mddev->bitmap);
  close_sync(conf);

  if (mddev_is_clustered(mddev)) {
   conf->cluster_sync_low = 0;
   conf->cluster_sync_high = 0;
  }
  return 0;
 }

 if (mddev->bitmap == ((void*)0) &&
     mddev->recovery_cp == MaxSector &&
     !test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery) &&
     conf->fullsync == 0) {
  *skipped = 1;
  return max_sector - sector_nr;
 }



 if (!md_bitmap_start_sync(mddev->bitmap, sector_nr, &sync_blocks, 1) &&
     !conf->fullsync && !test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery)) {

  *skipped = 1;
  return sync_blocks;
 }





 if (atomic_read(&conf->nr_waiting[idx]))
  schedule_timeout_uninterruptible(1);





 md_bitmap_cond_end_sync(mddev->bitmap, sector_nr,
  mddev_is_clustered(mddev) && (sector_nr + 2 * RESYNC_SECTORS > conf->cluster_sync_high));


 if (raise_barrier(conf, sector_nr))
  return 0;

 r1_bio = raid1_alloc_init_r1buf(conf);

 rcu_read_lock();
 r1_bio->mddev = mddev;
 r1_bio->sector = sector_nr;
 r1_bio->state = 0;
 set_bit(R1BIO_IsSync, &r1_bio->state);

 good_sectors = align_to_barrier_unit_end(sector_nr, good_sectors);

 for (i = 0; i < conf->raid_disks * 2; i++) {
  struct md_rdev *rdev;
  bio = r1_bio->bios[i];

  rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (rdev == ((void*)0) ||
      test_bit(Faulty, &rdev->flags)) {
   if (i < conf->raid_disks)
    still_degraded = 1;
  } else if (!test_bit(In_sync, &rdev->flags)) {
   bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
   bio->bi_end_io = end_sync_write;
   write_targets ++;
  } else {

   sector_t first_bad = MaxSector;
   int bad_sectors;

   if (is_badblock(rdev, sector_nr, good_sectors,
     &first_bad, &bad_sectors)) {
    if (first_bad > sector_nr)
     good_sectors = first_bad - sector_nr;
    else {
     bad_sectors -= (sector_nr - first_bad);
     if (min_bad == 0 ||
         min_bad > bad_sectors)
      min_bad = bad_sectors;
    }
   }
   if (sector_nr < first_bad) {
    if (test_bit(WriteMostly, &rdev->flags)) {
     if (wonly < 0)
      wonly = i;
    } else {
     if (disk < 0)
      disk = i;
    }
    bio_set_op_attrs(bio, REQ_OP_READ, 0);
    bio->bi_end_io = end_sync_read;
    read_targets++;
   } else if (!test_bit(WriteErrorSeen, &rdev->flags) &&
    test_bit(MD_RECOVERY_SYNC, &mddev->recovery) &&
    !test_bit(MD_RECOVERY_CHECK, &mddev->recovery)) {






    bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
    bio->bi_end_io = end_sync_write;
    write_targets++;
   }
  }
  if (bio->bi_end_io) {
   atomic_inc(&rdev->nr_pending);
   bio->bi_iter.bi_sector = sector_nr + rdev->data_offset;
   bio_set_dev(bio, rdev->bdev);
   if (test_bit(FailFast, &rdev->flags))
    bio->bi_opf |= MD_FAILFAST;
  }
 }
 rcu_read_unlock();
 if (disk < 0)
  disk = wonly;
 r1_bio->read_disk = disk;

 if (read_targets == 0 && min_bad > 0) {



  int ok = 1;
  for (i = 0 ; i < conf->raid_disks * 2 ; i++)
   if (r1_bio->bios[i]->bi_end_io == end_sync_write) {
    struct md_rdev *rdev = conf->mirrors[i].rdev;
    ok = rdev_set_badblocks(rdev, sector_nr,
       min_bad, 0
     ) && ok;
   }
  set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
  *skipped = 1;
  put_buf(r1_bio);

  if (!ok) {





   conf->recovery_disabled = mddev->recovery_disabled;
   set_bit(MD_RECOVERY_INTR, &mddev->recovery);
   return 0;
  } else
   return min_bad;

 }
 if (min_bad > 0 && min_bad < good_sectors) {


  good_sectors = min_bad;
 }

 if (test_bit(MD_RECOVERY_SYNC, &mddev->recovery) && read_targets > 0)

  write_targets += read_targets-1;

 if (write_targets == 0 || read_targets == 0) {



  sector_t rv;
  if (min_bad > 0)
   max_sector = sector_nr + min_bad;
  rv = max_sector - sector_nr;
  *skipped = 1;
  put_buf(r1_bio);
  return rv;
 }

 if (max_sector > mddev->resync_max)
  max_sector = mddev->resync_max;
 if (max_sector > sector_nr + good_sectors)
  max_sector = sector_nr + good_sectors;
 nr_sectors = 0;
 sync_blocks = 0;
 do {
  struct page *page;
  int len = PAGE_SIZE;
  if (sector_nr + (len>>9) > max_sector)
   len = (max_sector - sector_nr) << 9;
  if (len == 0)
   break;
  if (sync_blocks == 0) {
   if (!md_bitmap_start_sync(mddev->bitmap, sector_nr,
        &sync_blocks, still_degraded) &&
       !conf->fullsync &&
       !test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery))
    break;
   if ((len >> 9) > sync_blocks)
    len = sync_blocks<<9;
  }

  for (i = 0 ; i < conf->raid_disks * 2; i++) {
   struct resync_pages *rp;

   bio = r1_bio->bios[i];
   rp = get_resync_pages(bio);
   if (bio->bi_end_io) {
    page = resync_fetch_page(rp, page_idx);





    bio_add_page(bio, page, len, 0);
   }
  }
  nr_sectors += len>>9;
  sector_nr += len>>9;
  sync_blocks -= (len>>9);
 } while (++page_idx < RESYNC_PAGES);

 r1_bio->sectors = nr_sectors;

 if (mddev_is_clustered(mddev) &&
   conf->cluster_sync_high < sector_nr + nr_sectors) {
  conf->cluster_sync_low = mddev->curr_resync_completed;
  conf->cluster_sync_high = conf->cluster_sync_low + CLUSTER_RESYNC_WINDOW_SECTORS;

  md_cluster_ops->resync_info_update(mddev,
    conf->cluster_sync_low,
    conf->cluster_sync_high);
 }




 if (test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery)) {
  atomic_set(&r1_bio->remaining, read_targets);
  for (i = 0; i < conf->raid_disks * 2 && read_targets; i++) {
   bio = r1_bio->bios[i];
   if (bio->bi_end_io == end_sync_read) {
    read_targets--;
    md_sync_acct_bio(bio, nr_sectors);
    if (read_targets == 1)
     bio->bi_opf &= ~MD_FAILFAST;
    generic_make_request(bio);
   }
  }
 } else {
  atomic_set(&r1_bio->remaining, 1);
  bio = r1_bio->bios[r1_bio->read_disk];
  md_sync_acct_bio(bio, nr_sectors);
  if (read_targets == 1)
   bio->bi_opf &= ~MD_FAILFAST;
  generic_make_request(bio);
 }
 return nr_sectors;
}
