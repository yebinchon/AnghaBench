
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stripe_head_state {int uptodate; int failed; size_t* failed_num; scalar_t__ injournal; int dec_preread_active; int p_failed; int q_failed; int compute; scalar_t__ ops_request; scalar_t__ handle_bad_blocks; struct md_rdev* blocked_rdev; int locked; scalar_t__ expanding; scalar_t__ expanded; scalar_t__ replacing; scalar_t__ syncing; scalar_t__ to_write; scalar_t__ non_overwrite; scalar_t__ to_read; scalar_t__ just_cached; scalar_t__ written; scalar_t__ log_failed; scalar_t__ to_fill; } ;
struct stripe_head {int disks; size_t pd_idx; size_t qd_idx; scalar_t__ reconstruct_state; scalar_t__ state; scalar_t__ sector; struct r5dev* dev; scalar_t__ check_state; int log_io; int count; int stripe_lock; int batch_head; struct r5conf* raid_conf; } ;
struct r5dev {scalar_t__ flags; scalar_t__ written; } ;
struct r5conf {int max_degraded; int level; int raid_disks; TYPE_2__* mddev; int preread_active_stripes; TYPE_1__* disks; int wait_for_overlap; int reshape_stripes; int log; } ;
struct md_rdev {int dummy; } ;
struct TYPE_7__ {int thread; scalar_t__ external; int ro; scalar_t__ sb_flags; } ;
struct TYPE_6__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 scalar_t__ IO_THRESHOLD ;
 int MD_SB_CHANGE_PENDING ;
 int R5_Discard ;
 int R5_InJournal ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_MadeGood ;
 int R5_MadeGoodRepl ;
 int R5_NeedReplace ;
 int R5_Overlap ;
 int R5_ReWrite ;
 int R5_ReadError ;
 int R5_UPTODATE ;
 int R5_WantReplace ;
 int R5_Wantread ;
 int R5_Wantwrite ;
 int R5_WriteError ;
 int STRIPE_ACTIVE ;
 int STRIPE_BATCH_ERR ;
 int STRIPE_BIOFILL_RUN ;
 int STRIPE_COMPUTE_RUN ;
 int STRIPE_DELAYED ;
 int STRIPE_DISCARD ;
 int STRIPE_EXPANDING ;
 int STRIPE_EXPAND_READY ;
 int STRIPE_EXPAND_SOURCE ;
 int STRIPE_HANDLE ;
 int STRIPE_INSYNC ;
 int STRIPE_LOG_TRAPPED ;
 int STRIPE_OP_BIOFILL ;
 int STRIPE_PREREAD_ACTIVE ;
 int STRIPE_R5C_CACHING ;
 int STRIPE_R5C_FULL_STRIPE ;
 int STRIPE_R5C_PARTIAL_STRIPE ;
 int STRIPE_REPLACED ;
 int STRIPE_SECTORS ;
 int STRIPE_SYNCING ;
 int STRIPE_SYNC_REQUESTED ;
 int WARN_ON (int) ;
 int analyse_stripe (struct stripe_head*,struct stripe_head_state*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int break_stripe_batch_list (struct stripe_head*,int ) ;
 scalar_t__ clear_batch_ready (struct stripe_head*) ;
 int clear_bit (int ,scalar_t__*) ;
 int clear_bit_unlock (int ,scalar_t__*) ;
 int handle_failed_stripe (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ;
 int handle_failed_sync (struct r5conf*,struct stripe_head*,struct stripe_head_state*) ;
 int handle_parity_checks5 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ;
 int handle_parity_checks6 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ;
 int handle_stripe_clean_event (struct r5conf*,struct stripe_head*,int) ;
 int handle_stripe_dirtying (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ;
 int handle_stripe_expansion (struct r5conf*,struct stripe_head*) ;
 int handle_stripe_fill (struct stripe_head*,struct stripe_head_state*,int) ;
 int log_stripe_write_finished (struct stripe_head*) ;
 int md_done_sync (TYPE_2__*,int ,int) ;
 int md_error (TYPE_2__*,struct md_rdev*) ;
 int md_wait_for_blocked_rdev (struct md_rdev*,TYPE_2__*) ;
 int md_wakeup_thread (int ) ;
 int ops_run_io (struct stripe_head*,struct stripe_head_state*) ;
 int pr_debug (char*,int,...) ;
 int r5c_finish_stripe_write_out (struct r5conf*,struct stripe_head*,struct stripe_head_state*) ;
 int r5c_handle_cached_data_endio (struct r5conf*,struct stripe_head*,int) ;
 int r5c_is_writeback (int ) ;
 int r5c_try_caching_write (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ;
 struct stripe_head* raid5_get_active_stripe (struct r5conf*,scalar_t__,int,int,int) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int raid_run_ops (struct stripe_head*,scalar_t__) ;
 int rdev_clear_badblocks (struct md_rdev*,scalar_t__,int ,int ) ;
 int rdev_dec_pending (struct md_rdev*,TYPE_2__*) ;
 int rdev_set_badblocks (struct md_rdev*,scalar_t__,int ,int ) ;
 scalar_t__ reconstruct_state_drain_result ;
 void* reconstruct_state_idle ;
 scalar_t__ reconstruct_state_prexor_drain_result ;
 scalar_t__ reconstruct_state_result ;
 int schedule_reconstruction (struct stripe_head*,struct stripe_head_state*,int,int) ;
 int set_bit (int ,scalar_t__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stripe_set_idx (scalar_t__,struct r5conf*,int ,struct stripe_head*) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 int test_and_set_bit (int ,scalar_t__*) ;
 scalar_t__ test_and_set_bit_lock (int ,scalar_t__*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;
 scalar_t__ unlikely (struct md_rdev*) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_stripe(struct stripe_head *sh)
{
 struct stripe_head_state s;
 struct r5conf *conf = sh->raid_conf;
 int i;
 int prexor;
 int disks = sh->disks;
 struct r5dev *pdev, *qdev;

 clear_bit(STRIPE_HANDLE, &sh->state);
 if (test_and_set_bit_lock(STRIPE_ACTIVE, &sh->state)) {


  set_bit(STRIPE_HANDLE, &sh->state);
  return;
 }

 if (clear_batch_ready(sh) ) {
  clear_bit_unlock(STRIPE_ACTIVE, &sh->state);
  return;
 }

 if (test_and_clear_bit(STRIPE_BATCH_ERR, &sh->state))
  break_stripe_batch_list(sh, 0);

 if (test_bit(STRIPE_SYNC_REQUESTED, &sh->state) && !sh->batch_head) {
  spin_lock(&sh->stripe_lock);




  if (!test_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state) &&
      !test_bit(STRIPE_R5C_FULL_STRIPE, &sh->state) &&
      !test_bit(STRIPE_DISCARD, &sh->state) &&
      test_and_clear_bit(STRIPE_SYNC_REQUESTED, &sh->state)) {
   set_bit(STRIPE_SYNCING, &sh->state);
   clear_bit(STRIPE_INSYNC, &sh->state);
   clear_bit(STRIPE_REPLACED, &sh->state);
  }
  spin_unlock(&sh->stripe_lock);
 }
 clear_bit(STRIPE_DELAYED, &sh->state);

 pr_debug("handling stripe %llu, state=%#lx cnt=%d, "
  "pd_idx=%d, qd_idx=%d\n, check:%d, reconstruct:%d\n",
        (unsigned long long)sh->sector, sh->state,
        atomic_read(&sh->count), sh->pd_idx, sh->qd_idx,
        sh->check_state, sh->reconstruct_state);

 analyse_stripe(sh, &s);

 if (test_bit(STRIPE_LOG_TRAPPED, &sh->state))
  goto finish;

 if (s.handle_bad_blocks ||
     test_bit(MD_SB_CHANGE_PENDING, &conf->mddev->sb_flags)) {
  set_bit(STRIPE_HANDLE, &sh->state);
  goto finish;
 }

 if (unlikely(s.blocked_rdev)) {
  if (s.syncing || s.expanding || s.expanded ||
      s.replacing || s.to_write || s.written) {
   set_bit(STRIPE_HANDLE, &sh->state);
   goto finish;
  }

  rdev_dec_pending(s.blocked_rdev, conf->mddev);
  s.blocked_rdev = ((void*)0);
 }

 if (s.to_fill && !test_bit(STRIPE_BIOFILL_RUN, &sh->state)) {
  set_bit(STRIPE_OP_BIOFILL, &s.ops_request);
  set_bit(STRIPE_BIOFILL_RUN, &sh->state);
 }

 pr_debug("locked=%d uptodate=%d to_read=%d"
        " to_write=%d failed=%d failed_num=%d,%d\n",
        s.locked, s.uptodate, s.to_read, s.to_write, s.failed,
        s.failed_num[0], s.failed_num[1]);







 if (s.failed > conf->max_degraded ||
     (s.log_failed && s.injournal == 0)) {
  sh->check_state = 0;
  sh->reconstruct_state = 0;
  break_stripe_batch_list(sh, 0);
  if (s.to_read+s.to_write+s.written)
   handle_failed_stripe(conf, sh, &s, disks);
  if (s.syncing + s.replacing)
   handle_failed_sync(conf, sh, &s);
 }




 prexor = 0;
 if (sh->reconstruct_state == reconstruct_state_prexor_drain_result)
  prexor = 1;
 if (sh->reconstruct_state == reconstruct_state_drain_result ||
     sh->reconstruct_state == reconstruct_state_prexor_drain_result) {
  sh->reconstruct_state = reconstruct_state_idle;




  BUG_ON(!test_bit(R5_UPTODATE, &sh->dev[sh->pd_idx].flags) &&
         !test_bit(R5_Discard, &sh->dev[sh->pd_idx].flags));
  BUG_ON(sh->qd_idx >= 0 &&
         !test_bit(R5_UPTODATE, &sh->dev[sh->qd_idx].flags) &&
         !test_bit(R5_Discard, &sh->dev[sh->qd_idx].flags));
  for (i = disks; i--; ) {
   struct r5dev *dev = &sh->dev[i];
   if (test_bit(R5_LOCKED, &dev->flags) &&
    (i == sh->pd_idx || i == sh->qd_idx ||
     dev->written || test_bit(R5_InJournal,
         &dev->flags))) {
    pr_debug("Writing block %d\n", i);
    set_bit(R5_Wantwrite, &dev->flags);
    if (prexor)
     continue;
    if (s.failed > 1)
     continue;
    if (!test_bit(R5_Insync, &dev->flags) ||
        ((i == sh->pd_idx || i == sh->qd_idx) &&
         s.failed == 0))
     set_bit(STRIPE_INSYNC, &sh->state);
   }
  }
  if (test_and_clear_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
   s.dec_preread_active = 1;
 }





 pdev = &sh->dev[sh->pd_idx];
 s.p_failed = (s.failed >= 1 && s.failed_num[0] == sh->pd_idx)
  || (s.failed >= 2 && s.failed_num[1] == sh->pd_idx);
 qdev = &sh->dev[sh->qd_idx];
 s.q_failed = (s.failed >= 1 && s.failed_num[0] == sh->qd_idx)
  || (s.failed >= 2 && s.failed_num[1] == sh->qd_idx)
  || conf->level < 6;

 if (s.written &&
     (s.p_failed || ((test_bit(R5_Insync, &pdev->flags)
        && !test_bit(R5_LOCKED, &pdev->flags)
        && (test_bit(R5_UPTODATE, &pdev->flags) ||
     test_bit(R5_Discard, &pdev->flags))))) &&
     (s.q_failed || ((test_bit(R5_Insync, &qdev->flags)
        && !test_bit(R5_LOCKED, &qdev->flags)
        && (test_bit(R5_UPTODATE, &qdev->flags) ||
     test_bit(R5_Discard, &qdev->flags))))))
  handle_stripe_clean_event(conf, sh, disks);

 if (s.just_cached)
  r5c_handle_cached_data_endio(conf, sh, disks);
 log_stripe_write_finished(sh);





 if (s.to_read || s.non_overwrite
     || (conf->level == 6 && s.to_write && s.failed)
     || (s.syncing && (s.uptodate + s.compute < disks))
     || s.replacing
     || s.expanding)
  handle_stripe_fill(sh, &s, disks);






 r5c_finish_stripe_write_out(conf, sh, &s);
 if (!sh->reconstruct_state && !sh->check_state && !sh->log_io) {
  if (!r5c_is_writeback(conf->log)) {
   if (s.to_write)
    handle_stripe_dirtying(conf, sh, &s, disks);
  } else {
   int ret = 0;


   if (s.to_write)
    ret = r5c_try_caching_write(conf, sh, &s,
           disks);







   if (ret == -EAGAIN ||

       (!test_bit(STRIPE_R5C_CACHING, &sh->state) &&
        s.injournal > 0)) {
    ret = handle_stripe_dirtying(conf, sh, &s,
            disks);
    if (ret == -EAGAIN)
     goto finish;
   }
  }
 }






 if (sh->check_state ||
     (s.syncing && s.locked == 0 &&
      !test_bit(STRIPE_COMPUTE_RUN, &sh->state) &&
      !test_bit(STRIPE_INSYNC, &sh->state))) {
  if (conf->level == 6)
   handle_parity_checks6(conf, sh, &s, disks);
  else
   handle_parity_checks5(conf, sh, &s, disks);
 }

 if ((s.replacing || s.syncing) && s.locked == 0
     && !test_bit(STRIPE_COMPUTE_RUN, &sh->state)
     && !test_bit(STRIPE_REPLACED, &sh->state)) {

  for (i = 0; i < conf->raid_disks; i++)
   if (test_bit(R5_NeedReplace, &sh->dev[i].flags)) {
    WARN_ON(!test_bit(R5_UPTODATE, &sh->dev[i].flags));
    set_bit(R5_WantReplace, &sh->dev[i].flags);
    set_bit(R5_LOCKED, &sh->dev[i].flags);
    s.locked++;
   }
  if (s.replacing)
   set_bit(STRIPE_INSYNC, &sh->state);
  set_bit(STRIPE_REPLACED, &sh->state);
 }
 if ((s.syncing || s.replacing) && s.locked == 0 &&
     !test_bit(STRIPE_COMPUTE_RUN, &sh->state) &&
     test_bit(STRIPE_INSYNC, &sh->state)) {
  md_done_sync(conf->mddev, STRIPE_SECTORS, 1);
  clear_bit(STRIPE_SYNCING, &sh->state);
  if (test_and_clear_bit(R5_Overlap, &sh->dev[sh->pd_idx].flags))
   wake_up(&conf->wait_for_overlap);
 }




 if (s.failed <= conf->max_degraded && !conf->mddev->ro)
  for (i = 0; i < s.failed; i++) {
   struct r5dev *dev = &sh->dev[s.failed_num[i]];
   if (test_bit(R5_ReadError, &dev->flags)
       && !test_bit(R5_LOCKED, &dev->flags)
       && test_bit(R5_UPTODATE, &dev->flags)
    ) {
    if (!test_bit(R5_ReWrite, &dev->flags)) {
     set_bit(R5_Wantwrite, &dev->flags);
     set_bit(R5_ReWrite, &dev->flags);
     set_bit(R5_LOCKED, &dev->flags);
     s.locked++;
    } else {

     set_bit(R5_Wantread, &dev->flags);
     set_bit(R5_LOCKED, &dev->flags);
     s.locked++;
    }
   }
  }


 if (sh->reconstruct_state == reconstruct_state_result) {
  struct stripe_head *sh_src
   = raid5_get_active_stripe(conf, sh->sector, 1, 1, 1);
  if (sh_src && test_bit(STRIPE_EXPAND_SOURCE, &sh_src->state)) {



   set_bit(STRIPE_DELAYED, &sh->state);
   set_bit(STRIPE_HANDLE, &sh->state);
   if (!test_and_set_bit(STRIPE_PREREAD_ACTIVE,
           &sh_src->state))
    atomic_inc(&conf->preread_active_stripes);
   raid5_release_stripe(sh_src);
   goto finish;
  }
  if (sh_src)
   raid5_release_stripe(sh_src);

  sh->reconstruct_state = reconstruct_state_idle;
  clear_bit(STRIPE_EXPANDING, &sh->state);
  for (i = conf->raid_disks; i--; ) {
   set_bit(R5_Wantwrite, &sh->dev[i].flags);
   set_bit(R5_LOCKED, &sh->dev[i].flags);
   s.locked++;
  }
 }

 if (s.expanded && test_bit(STRIPE_EXPANDING, &sh->state) &&
     !sh->reconstruct_state) {

  sh->disks = conf->raid_disks;
  stripe_set_idx(sh->sector, conf, 0, sh);
  schedule_reconstruction(sh, &s, 1, 1);
 } else if (s.expanded && !sh->reconstruct_state && s.locked == 0) {
  clear_bit(STRIPE_EXPAND_READY, &sh->state);
  atomic_dec(&conf->reshape_stripes);
  wake_up(&conf->wait_for_overlap);
  md_done_sync(conf->mddev, STRIPE_SECTORS, 1);
 }

 if (s.expanding && s.locked == 0 &&
     !test_bit(STRIPE_COMPUTE_RUN, &sh->state))
  handle_stripe_expansion(conf, sh);

finish:

 if (unlikely(s.blocked_rdev)) {
  if (conf->mddev->external)
   md_wait_for_blocked_rdev(s.blocked_rdev,
       conf->mddev);
  else




   rdev_dec_pending(s.blocked_rdev,
      conf->mddev);
 }

 if (s.handle_bad_blocks)
  for (i = disks; i--; ) {
   struct md_rdev *rdev;
   struct r5dev *dev = &sh->dev[i];
   if (test_and_clear_bit(R5_WriteError, &dev->flags)) {

    rdev = conf->disks[i].rdev;
    if (!rdev_set_badblocks(rdev, sh->sector,
       STRIPE_SECTORS, 0))
     md_error(conf->mddev, rdev);
    rdev_dec_pending(rdev, conf->mddev);
   }
   if (test_and_clear_bit(R5_MadeGood, &dev->flags)) {
    rdev = conf->disks[i].rdev;
    rdev_clear_badblocks(rdev, sh->sector,
           STRIPE_SECTORS, 0);
    rdev_dec_pending(rdev, conf->mddev);
   }
   if (test_and_clear_bit(R5_MadeGoodRepl, &dev->flags)) {
    rdev = conf->disks[i].replacement;
    if (!rdev)

     rdev = conf->disks[i].rdev;
    rdev_clear_badblocks(rdev, sh->sector,
           STRIPE_SECTORS, 0);
    rdev_dec_pending(rdev, conf->mddev);
   }
  }

 if (s.ops_request)
  raid_run_ops(sh, s.ops_request);

 ops_run_io(sh, &s);

 if (s.dec_preread_active) {




  atomic_dec(&conf->preread_active_stripes);
  if (atomic_read(&conf->preread_active_stripes) <
      IO_THRESHOLD)
   md_wakeup_thread(conf->mddev->thread);
 }

 clear_bit_unlock(STRIPE_ACTIVE, &sh->state);
}
