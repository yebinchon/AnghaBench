
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head_state {scalar_t__ injournal; } ;
struct stripe_head {size_t pd_idx; int disks; int state; int sector; int log_start; int r5c; TYPE_1__* dev; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; int tree_lock; int big_stripe_tree; int stripe_in_journal_count; int stripe_in_journal_lock; } ;
struct r5conf {int r5c_cached_full_stripes; int r5c_flushing_full_stripes; int r5c_cached_partial_stripes; int r5c_flushing_partial_stripes; int wait_for_overlap; TYPE_2__* mddev; int pending_full_writes; struct r5l_log* log; } ;
typedef int sector_t ;
struct TYPE_4__ {int thread; } ;
struct TYPE_3__ {int flags; } ;


 int BUG_ON (int) ;
 int MaxSector ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ;
 uintptr_t R5C_RADIX_COUNT_SHIFT ;
 int R5_InJournal ;
 int R5_Overlap ;
 int STRIPE_FULL_WRITE ;
 int STRIPE_HANDLE ;
 int STRIPE_R5C_CACHING ;
 int STRIPE_R5C_FULL_STRIPE ;
 int STRIPE_R5C_PARTIAL_STRIPE ;
 int STRIPE_SYNC_REQUESTED ;
 int WARN_ON (scalar_t__) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int list_del_init (int *) ;
 int md_wakeup_thread (int ) ;
 int r5c_tree_index (struct r5conf*,int ) ;
 int r5c_update_log_state (struct r5l_log*) ;
 int r5l_append_flush_payload (struct r5l_log*,int ) ;
 int radix_tree_delete (int *,int ) ;
 scalar_t__ radix_tree_deref_slot_protected (void**,int *) ;
 void** radix_tree_lookup_slot (int *,int ) ;
 int radix_tree_replace_slot (int *,void**,void*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

void r5c_finish_stripe_write_out(struct r5conf *conf,
     struct stripe_head *sh,
     struct stripe_head_state *s)
{
 struct r5l_log *log = conf->log;
 int i;
 int do_wakeup = 0;
 sector_t tree_index;
 void **pslot;
 uintptr_t refcount;

 if (!log || !test_bit(R5_InJournal, &sh->dev[sh->pd_idx].flags))
  return;

 WARN_ON(test_bit(STRIPE_R5C_CACHING, &sh->state));
 clear_bit(R5_InJournal, &sh->dev[sh->pd_idx].flags);

 if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH)
  return;

 for (i = sh->disks; i--; ) {
  clear_bit(R5_InJournal, &sh->dev[i].flags);
  if (test_and_clear_bit(R5_Overlap, &sh->dev[i].flags))
   do_wakeup = 1;
 }





 s->injournal = 0;

 if (test_and_clear_bit(STRIPE_FULL_WRITE, &sh->state))
  if (atomic_dec_and_test(&conf->pending_full_writes))
   md_wakeup_thread(conf->mddev->thread);

 if (do_wakeup)
  wake_up(&conf->wait_for_overlap);

 spin_lock_irq(&log->stripe_in_journal_lock);
 list_del_init(&sh->r5c);
 spin_unlock_irq(&log->stripe_in_journal_lock);
 sh->log_start = MaxSector;

 atomic_dec(&log->stripe_in_journal_count);
 r5c_update_log_state(log);


 if (test_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state) ||
     test_bit(STRIPE_R5C_FULL_STRIPE, &sh->state)) {
  tree_index = r5c_tree_index(conf, sh->sector);
  spin_lock(&log->tree_lock);
  pslot = radix_tree_lookup_slot(&log->big_stripe_tree,
            tree_index);
  BUG_ON(pslot == ((void*)0));
  refcount = (uintptr_t)radix_tree_deref_slot_protected(
   pslot, &log->tree_lock) >>
   R5C_RADIX_COUNT_SHIFT;
  if (refcount == 1)
   radix_tree_delete(&log->big_stripe_tree, tree_index);
  else
   radix_tree_replace_slot(
    &log->big_stripe_tree, pslot,
    (void *)((refcount - 1) << R5C_RADIX_COUNT_SHIFT));
  spin_unlock(&log->tree_lock);
 }

 if (test_and_clear_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state)) {
  BUG_ON(atomic_read(&conf->r5c_cached_partial_stripes) == 0);
  atomic_dec(&conf->r5c_flushing_partial_stripes);
  atomic_dec(&conf->r5c_cached_partial_stripes);
 }

 if (test_and_clear_bit(STRIPE_R5C_FULL_STRIPE, &sh->state)) {
  BUG_ON(atomic_read(&conf->r5c_cached_full_stripes) == 0);
  atomic_dec(&conf->r5c_flushing_full_stripes);
  atomic_dec(&conf->r5c_cached_full_stripes);
 }

 r5l_append_flush_payload(log, sh->sector);

 if (test_bit(STRIPE_SYNC_REQUESTED, &sh->state))
  set_bit(STRIPE_HANDLE, &sh->state);
}
