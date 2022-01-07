
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {int disks; scalar_t__ bm_seq; size_t pd_idx; int lru; int state; TYPE_2__* dev; } ;
struct list_head {int dummy; } ;
struct r5conf {scalar_t__ seq_write; scalar_t__ worker_cnt_per_group; int raid_disks; int max_degraded; struct list_head r5c_partial_stripe_list; struct list_head r5c_full_stripe_list; int r5c_cached_partial_stripes; int r5c_cached_full_stripes; int log; int active_stripes; TYPE_1__* mddev; int preread_active_stripes; struct list_head handle_list; struct list_head loprio_list; struct list_head bitmap_list; struct list_head delayed_list; scalar_t__ quiesce; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int thread; } ;


 int BUG_ON (int) ;
 scalar_t__ IO_THRESHOLD ;
 int R5_InJournal ;
 int STRIPE_BIT_DELAY ;
 int STRIPE_DELAYED ;
 int STRIPE_EXPANDING ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 int STRIPE_R5C_CACHING ;
 int STRIPE_R5C_FULL_STRIPE ;
 int STRIPE_R5C_PARTIAL_STRIPE ;
 int STRIPE_SYNC_REQUESTED ;
 int WARN_ON (scalar_t__) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_empty (int *) ;
 int md_wakeup_thread (int ) ;
 int r5c_check_cached_full_stripe (struct r5conf*) ;
 scalar_t__ r5c_is_writeback (int ) ;
 int r5c_make_stripe_write_out (struct stripe_head*) ;
 int raid5_wakeup_stripe_thread (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 scalar_t__ stripe_is_lowprio (struct stripe_head*) ;
 int stripe_operations_active (struct stripe_head*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void do_release_stripe(struct r5conf *conf, struct stripe_head *sh,
         struct list_head *temp_inactive_list)
{
 int i;
 int injournal = 0;

 BUG_ON(!list_empty(&sh->lru));
 BUG_ON(atomic_read(&conf->active_stripes)==0);

 if (r5c_is_writeback(conf->log))
  for (i = sh->disks; i--; )
   if (test_bit(R5_InJournal, &sh->dev[i].flags))
    injournal++;







 if (test_bit(STRIPE_SYNC_REQUESTED, &sh->state) ||
     (conf->quiesce && r5c_is_writeback(conf->log) &&
      !test_bit(STRIPE_HANDLE, &sh->state) && injournal != 0)) {
  if (test_bit(STRIPE_R5C_CACHING, &sh->state))
   r5c_make_stripe_write_out(sh);
  set_bit(STRIPE_HANDLE, &sh->state);
 }

 if (test_bit(STRIPE_HANDLE, &sh->state)) {
  if (test_bit(STRIPE_DELAYED, &sh->state) &&
      !test_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
   list_add_tail(&sh->lru, &conf->delayed_list);
  else if (test_bit(STRIPE_BIT_DELAY, &sh->state) &&
      sh->bm_seq - conf->seq_write > 0)
   list_add_tail(&sh->lru, &conf->bitmap_list);
  else {
   clear_bit(STRIPE_DELAYED, &sh->state);
   clear_bit(STRIPE_BIT_DELAY, &sh->state);
   if (conf->worker_cnt_per_group == 0) {
    if (stripe_is_lowprio(sh))
     list_add_tail(&sh->lru,
       &conf->loprio_list);
    else
     list_add_tail(&sh->lru,
       &conf->handle_list);
   } else {
    raid5_wakeup_stripe_thread(sh);
    return;
   }
  }
  md_wakeup_thread(conf->mddev->thread);
 } else {
  BUG_ON(stripe_operations_active(sh));
  if (test_and_clear_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
   if (atomic_dec_return(&conf->preread_active_stripes)
       < IO_THRESHOLD)
    md_wakeup_thread(conf->mddev->thread);
  atomic_dec(&conf->active_stripes);
  if (!test_bit(STRIPE_EXPANDING, &sh->state)) {
   if (!r5c_is_writeback(conf->log))
    list_add_tail(&sh->lru, temp_inactive_list);
   else {
    WARN_ON(test_bit(R5_InJournal, &sh->dev[sh->pd_idx].flags));
    if (injournal == 0)
     list_add_tail(&sh->lru, temp_inactive_list);
    else if (injournal == conf->raid_disks - conf->max_degraded) {

     if (!test_and_set_bit(STRIPE_R5C_FULL_STRIPE, &sh->state))
      atomic_inc(&conf->r5c_cached_full_stripes);
     if (test_and_clear_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state))
      atomic_dec(&conf->r5c_cached_partial_stripes);
     list_add_tail(&sh->lru, &conf->r5c_full_stripe_list);
     r5c_check_cached_full_stripe(conf);
    } else





     list_add_tail(&sh->lru, &conf->r5c_partial_stripe_list);
   }
  }
 }
}
