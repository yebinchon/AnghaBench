
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head_state {scalar_t__ failed; int waiting_extra_page; scalar_t__ locked; scalar_t__ req_compute; } ;
struct stripe_head {scalar_t__ sector; int pd_idx; int qd_idx; int state; struct r5dev* dev; } ;
struct r5dev {scalar_t__ page; scalar_t__ orig_page; int flags; scalar_t__ towrite; } ;
struct r5conf {scalar_t__ rmw_level; TYPE_1__* mddev; int cache_state; } ;
struct page {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ recovery_cp; scalar_t__ queue; } ;


 int EAGAIN ;
 int GFP_NOIO ;
 scalar_t__ MaxSector ;
 scalar_t__ PARITY_DISABLE_RMW ;
 scalar_t__ PARITY_PREFER_RMW ;
 int R5C_EXTRA_PAGE_IN_USE ;
 int R5_InJournal ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_OVERWRITE ;
 int R5_UPTODATE ;
 int R5_Wantcompute ;
 int R5_Wantread ;
 int STRIPE_BIT_DELAY ;
 int STRIPE_COMPUTE_RUN ;
 int STRIPE_DELAYED ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 struct page* alloc_page (int ) ;
 int blk_add_trace_msg (scalar_t__,char*,unsigned long long,int,...) ;
 int delay_towrite (struct r5conf*,struct r5dev*,struct stripe_head_state*) ;
 int pr_debug (char*,int,...) ;
 int r5c_use_extra_page (struct stripe_head*) ;
 int schedule_reconstruction (struct stripe_head*,struct stripe_head_state*,int,int ) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ uptodate_for_rmw (struct r5dev*) ;

__attribute__((used)) static int handle_stripe_dirtying(struct r5conf *conf,
      struct stripe_head *sh,
      struct stripe_head_state *s,
      int disks)
{
 int rmw = 0, rcw = 0, i;
 sector_t recovery_cp = conf->mddev->recovery_cp;
 if (conf->rmw_level == PARITY_DISABLE_RMW ||
     (recovery_cp < MaxSector && sh->sector >= recovery_cp &&
      s->failed == 0)) {



  rcw = 1; rmw = 2;
  pr_debug("force RCW rmw_level=%u, recovery_cp=%llu sh->sector=%llu\n",
    conf->rmw_level, (unsigned long long)recovery_cp,
    (unsigned long long)sh->sector);
 } else for (i = disks; i--; ) {

  struct r5dev *dev = &sh->dev[i];
  if (((dev->towrite && !delay_towrite(conf, dev, s)) ||
       i == sh->pd_idx || i == sh->qd_idx ||
       test_bit(R5_InJournal, &dev->flags)) &&
      !test_bit(R5_LOCKED, &dev->flags) &&
      !(uptodate_for_rmw(dev) ||
        test_bit(R5_Wantcompute, &dev->flags))) {
   if (test_bit(R5_Insync, &dev->flags))
    rmw++;
   else
    rmw += 2*disks;
  }

  if (!test_bit(R5_OVERWRITE, &dev->flags) &&
      i != sh->pd_idx && i != sh->qd_idx &&
      !test_bit(R5_LOCKED, &dev->flags) &&
      !(test_bit(R5_UPTODATE, &dev->flags) ||
        test_bit(R5_Wantcompute, &dev->flags))) {
   if (test_bit(R5_Insync, &dev->flags))
    rcw++;
   else
    rcw += 2*disks;
  }
 }

 pr_debug("for sector %llu state 0x%lx, rmw=%d rcw=%d\n",
   (unsigned long long)sh->sector, sh->state, rmw, rcw);
 set_bit(STRIPE_HANDLE, &sh->state);
 if ((rmw < rcw || (rmw == rcw && conf->rmw_level == PARITY_PREFER_RMW)) && rmw > 0) {

  if (conf->mddev->queue)
   blk_add_trace_msg(conf->mddev->queue,
       "raid5 rmw %llu %d",
       (unsigned long long)sh->sector, rmw);
  for (i = disks; i--; ) {
   struct r5dev *dev = &sh->dev[i];
   if (test_bit(R5_InJournal, &dev->flags) &&
       dev->page == dev->orig_page &&
       !test_bit(R5_LOCKED, &sh->dev[sh->pd_idx].flags)) {

    struct page *p = alloc_page(GFP_NOIO);

    if (p) {
     dev->orig_page = p;
     continue;
    }





    if (!test_and_set_bit(R5C_EXTRA_PAGE_IN_USE,
            &conf->cache_state)) {
     r5c_use_extra_page(sh);
     break;
    }


    set_bit(STRIPE_DELAYED, &sh->state);
    s->waiting_extra_page = 1;
    return -EAGAIN;
   }
  }

  for (i = disks; i--; ) {
   struct r5dev *dev = &sh->dev[i];
   if (((dev->towrite && !delay_towrite(conf, dev, s)) ||
        i == sh->pd_idx || i == sh->qd_idx ||
        test_bit(R5_InJournal, &dev->flags)) &&
       !test_bit(R5_LOCKED, &dev->flags) &&
       !(uptodate_for_rmw(dev) ||
         test_bit(R5_Wantcompute, &dev->flags)) &&
       test_bit(R5_Insync, &dev->flags)) {
    if (test_bit(STRIPE_PREREAD_ACTIVE,
          &sh->state)) {
     pr_debug("Read_old block %d for r-m-w\n",
       i);
     set_bit(R5_LOCKED, &dev->flags);
     set_bit(R5_Wantread, &dev->flags);
     s->locked++;
    } else {
     set_bit(STRIPE_DELAYED, &sh->state);
     set_bit(STRIPE_HANDLE, &sh->state);
    }
   }
  }
 }
 if ((rcw < rmw || (rcw == rmw && conf->rmw_level != PARITY_PREFER_RMW)) && rcw > 0) {

  int qread =0;
  rcw = 0;
  for (i = disks; i--; ) {
   struct r5dev *dev = &sh->dev[i];
   if (!test_bit(R5_OVERWRITE, &dev->flags) &&
       i != sh->pd_idx && i != sh->qd_idx &&
       !test_bit(R5_LOCKED, &dev->flags) &&
       !(test_bit(R5_UPTODATE, &dev->flags) ||
         test_bit(R5_Wantcompute, &dev->flags))) {
    rcw++;
    if (test_bit(R5_Insync, &dev->flags) &&
        test_bit(STRIPE_PREREAD_ACTIVE,
          &sh->state)) {
     pr_debug("Read_old block "
      "%d for Reconstruct\n", i);
     set_bit(R5_LOCKED, &dev->flags);
     set_bit(R5_Wantread, &dev->flags);
     s->locked++;
     qread++;
    } else {
     set_bit(STRIPE_DELAYED, &sh->state);
     set_bit(STRIPE_HANDLE, &sh->state);
    }
   }
  }
  if (rcw && conf->mddev->queue)
   blk_add_trace_msg(conf->mddev->queue, "raid5 rcw %llu %d %d %d",
       (unsigned long long)sh->sector,
       rcw, qread, test_bit(STRIPE_DELAYED, &sh->state));
 }

 if (rcw > disks && rmw > disks &&
     !test_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
  set_bit(STRIPE_DELAYED, &sh->state);
 if ((s->req_compute || !test_bit(STRIPE_COMPUTE_RUN, &sh->state)) &&
     (s->locked == 0 && (rcw == 0 || rmw == 0) &&
      !test_bit(STRIPE_BIT_DELAY, &sh->state)))
  schedule_reconstruction(sh, s, rcw == 0, 0);
 return 0;
}
