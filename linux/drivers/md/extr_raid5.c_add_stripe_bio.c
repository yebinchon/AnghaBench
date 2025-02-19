
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_head {int disks; int pd_idx; int stripe_lock; TYPE_2__* dev; int state; scalar_t__ bm_seq; scalar_t__ batch_head; scalar_t__ sector; int overwrite_disks; struct r5conf* raid_conf; } ;
struct r5conf {int chunk_sectors; scalar_t__ seq_flush; TYPE_3__* mddev; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; struct bio* bi_next; int bi_write_hint; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ bitmap; } ;
struct TYPE_5__ {scalar_t__ sector; int flags; struct bio* towrite; struct bio* toread; int write_hint; } ;


 int BUG_ON (int) ;
 int R5_OVERWRITE ;
 int R5_Overlap ;
 int STRIPE_BATCH_READY ;
 int STRIPE_BITMAP_PENDING ;
 int STRIPE_BIT_DELAY ;
 scalar_t__ STRIPE_SECTORS ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int bio_inc_remaining (struct bio*) ;
 int clear_bit (int ,int *) ;
 int md_bitmap_startwrite (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int md_write_inc (TYPE_3__*,struct bio*) ;
 int pr_debug (char*,unsigned long long,unsigned long long,...) ;
 struct bio* r5_next_bio (struct bio*,scalar_t__) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stripe_add_to_batch_list (struct r5conf*,struct stripe_head*) ;
 scalar_t__ stripe_can_batch (struct stripe_head*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int add_stripe_bio(struct stripe_head *sh, struct bio *bi, int dd_idx,
     int forwrite, int previous)
{
 struct bio **bip;
 struct r5conf *conf = sh->raid_conf;
 int firstwrite=0;

 pr_debug("adding bi b#%llu to stripe s#%llu\n",
  (unsigned long long)bi->bi_iter.bi_sector,
  (unsigned long long)sh->sector);

 spin_lock_irq(&sh->stripe_lock);
 sh->dev[dd_idx].write_hint = bi->bi_write_hint;

 if (sh->batch_head)
  goto overlap;
 if (forwrite) {
  bip = &sh->dev[dd_idx].towrite;
  if (*bip == ((void*)0))
   firstwrite = 1;
 } else
  bip = &sh->dev[dd_idx].toread;
 while (*bip && (*bip)->bi_iter.bi_sector < bi->bi_iter.bi_sector) {
  if (bio_end_sector(*bip) > bi->bi_iter.bi_sector)
   goto overlap;
  bip = & (*bip)->bi_next;
 }
 if (*bip && (*bip)->bi_iter.bi_sector < bio_end_sector(bi))
  goto overlap;

 if (forwrite && raid5_has_ppl(conf)) {







  sector_t sector;
  sector_t first = 0;
  sector_t last = 0;
  int count = 0;
  int i;

  for (i = 0; i < sh->disks; i++) {
   if (i != sh->pd_idx &&
       (i == dd_idx || sh->dev[i].towrite)) {
    sector = sh->dev[i].sector;
    if (count == 0 || sector < first)
     first = sector;
    if (sector > last)
     last = sector;
    count++;
   }
  }

  if (first + conf->chunk_sectors * (count - 1) != last)
   goto overlap;
 }

 if (!forwrite || previous)
  clear_bit(STRIPE_BATCH_READY, &sh->state);

 BUG_ON(*bip && bi->bi_next && (*bip) != bi->bi_next);
 if (*bip)
  bi->bi_next = *bip;
 *bip = bi;
 bio_inc_remaining(bi);
 md_write_inc(conf->mddev, bi);

 if (forwrite) {

  sector_t sector = sh->dev[dd_idx].sector;
  for (bi=sh->dev[dd_idx].towrite;
       sector < sh->dev[dd_idx].sector + STRIPE_SECTORS &&
        bi && bi->bi_iter.bi_sector <= sector;
       bi = r5_next_bio(bi, sh->dev[dd_idx].sector)) {
   if (bio_end_sector(bi) >= sector)
    sector = bio_end_sector(bi);
  }
  if (sector >= sh->dev[dd_idx].sector + STRIPE_SECTORS)
   if (!test_and_set_bit(R5_OVERWRITE, &sh->dev[dd_idx].flags))
    sh->overwrite_disks++;
 }

 pr_debug("added bi b#%llu to stripe s#%llu, disk %d.\n",
  (unsigned long long)(*bip)->bi_iter.bi_sector,
  (unsigned long long)sh->sector, dd_idx);

 if (conf->mddev->bitmap && firstwrite) {
  set_bit(STRIPE_BITMAP_PENDING, &sh->state);
  spin_unlock_irq(&sh->stripe_lock);
  md_bitmap_startwrite(conf->mddev->bitmap, sh->sector,
         STRIPE_SECTORS, 0);
  spin_lock_irq(&sh->stripe_lock);
  clear_bit(STRIPE_BITMAP_PENDING, &sh->state);
  if (!sh->batch_head) {
   sh->bm_seq = conf->seq_flush+1;
   set_bit(STRIPE_BIT_DELAY, &sh->state);
  }
 }
 spin_unlock_irq(&sh->stripe_lock);

 if (stripe_can_batch(sh))
  stripe_add_to_batch_list(conf, sh);
 return 1;

 overlap:
 set_bit(R5_Overlap, &sh->dev[dd_idx].flags);
 spin_unlock_irq(&sh->stripe_lock);
 return 0;
}
