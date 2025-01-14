
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_head {size_t pd_idx; int qd_idx; int state; scalar_t__ bm_seq; int sector; int stripe_lock; scalar_t__ overwrite_disks; TYPE_2__* dev; } ;
struct r5conf {int chunk_sectors; int raid_disks; int max_degraded; int preread_active_stripes; scalar_t__ seq_flush; TYPE_3__* mddev; int wait_for_overlap; } ;
struct mddev {scalar_t__ reshape_position; int bitmap; struct r5conf* private; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {int * bi_next; TYPE_1__ bi_iter; } ;
typedef int sector_t ;
struct TYPE_6__ {scalar_t__ bitmap; } ;
struct TYPE_5__ {int flags; struct bio* towrite; scalar_t__ toread; } ;


 int DEFINE_WAIT (int ) ;
 int DIV_ROUND_UP_SECTOR_T (int,int) ;
 scalar_t__ MaxSector ;
 int R5_OVERWRITE ;
 int R5_Overlap ;
 int STRIPE_BIT_DELAY ;
 int STRIPE_DELAYED ;
 int STRIPE_DISCARD ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 scalar_t__ STRIPE_SECTORS ;
 int STRIPE_SYNCING ;
 int TASK_UNINTERRUPTIBLE ;
 int atomic_inc (int *) ;
 int bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_inc_remaining (struct bio*) ;
 int clear_bit (int ,int *) ;
 int finish_wait (int *,int *) ;
 int md_bitmap_startwrite (int ,int ,scalar_t__,int ) ;
 int md_write_inc (struct mddev*,struct bio*) ;
 int prepare_to_wait (int *,int *,int ) ;
 struct stripe_head* raid5_get_active_stripe (struct r5conf*,int,int ,int ,int ) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int release_stripe_plug (struct mddev*,struct stripe_head*) ;
 int schedule () ;
 int sector_div (int,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int w ;

__attribute__((used)) static void make_discard_request(struct mddev *mddev, struct bio *bi)
{
 struct r5conf *conf = mddev->private;
 sector_t logical_sector, last_sector;
 struct stripe_head *sh;
 int stripe_sectors;

 if (mddev->reshape_position != MaxSector)

  return;

 logical_sector = bi->bi_iter.bi_sector & ~((sector_t)STRIPE_SECTORS-1);
 last_sector = bio_end_sector(bi);

 bi->bi_next = ((void*)0);

 stripe_sectors = conf->chunk_sectors *
  (conf->raid_disks - conf->max_degraded);
 logical_sector = DIV_ROUND_UP_SECTOR_T(logical_sector,
            stripe_sectors);
 sector_div(last_sector, stripe_sectors);

 logical_sector *= conf->chunk_sectors;
 last_sector *= conf->chunk_sectors;

 for (; logical_sector < last_sector;
      logical_sector += STRIPE_SECTORS) {
  DEFINE_WAIT(w);
  int d;
 again:
  sh = raid5_get_active_stripe(conf, logical_sector, 0, 0, 0);
  prepare_to_wait(&conf->wait_for_overlap, &w,
    TASK_UNINTERRUPTIBLE);
  set_bit(R5_Overlap, &sh->dev[sh->pd_idx].flags);
  if (test_bit(STRIPE_SYNCING, &sh->state)) {
   raid5_release_stripe(sh);
   schedule();
   goto again;
  }
  clear_bit(R5_Overlap, &sh->dev[sh->pd_idx].flags);
  spin_lock_irq(&sh->stripe_lock);
  for (d = 0; d < conf->raid_disks; d++) {
   if (d == sh->pd_idx || d == sh->qd_idx)
    continue;
   if (sh->dev[d].towrite || sh->dev[d].toread) {
    set_bit(R5_Overlap, &sh->dev[d].flags);
    spin_unlock_irq(&sh->stripe_lock);
    raid5_release_stripe(sh);
    schedule();
    goto again;
   }
  }
  set_bit(STRIPE_DISCARD, &sh->state);
  finish_wait(&conf->wait_for_overlap, &w);
  sh->overwrite_disks = 0;
  for (d = 0; d < conf->raid_disks; d++) {
   if (d == sh->pd_idx || d == sh->qd_idx)
    continue;
   sh->dev[d].towrite = bi;
   set_bit(R5_OVERWRITE, &sh->dev[d].flags);
   bio_inc_remaining(bi);
   md_write_inc(mddev, bi);
   sh->overwrite_disks++;
  }
  spin_unlock_irq(&sh->stripe_lock);
  if (conf->mddev->bitmap) {
   for (d = 0;
        d < conf->raid_disks - conf->max_degraded;
        d++)
    md_bitmap_startwrite(mddev->bitmap,
           sh->sector,
           STRIPE_SECTORS,
           0);
   sh->bm_seq = conf->seq_flush + 1;
   set_bit(STRIPE_BIT_DELAY, &sh->state);
  }

  set_bit(STRIPE_HANDLE, &sh->state);
  clear_bit(STRIPE_DELAYED, &sh->state);
  if (!test_and_set_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
   atomic_inc(&conf->preread_active_stripes);
  release_stripe_plug(mddev, sh);
 }

 bio_endio(bi);
}
