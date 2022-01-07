
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head_state {scalar_t__ injournal; scalar_t__ written; int ops_request; scalar_t__ failed; } ;
struct stripe_head {int state; struct r5dev* dev; int sector; } ;
struct r5l_log {int tree_lock; int big_stripe_tree; } ;
struct r5dev {int flags; scalar_t__ towrite; } ;
struct r5conf {int r5c_cached_partial_stripes; struct r5l_log* log; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int EAGAIN ;
 uintptr_t R5C_RADIX_COUNT_SHIFT ;
 int R5_InJournal ;
 int R5_LOCKED ;
 int R5_OVERWRITE ;
 int R5_Wantdrain ;
 int R5_Wantwrite ;
 int STRIPE_LOG_TRAPPED ;
 int STRIPE_OP_BIODRAIN ;
 int STRIPE_R5C_CACHING ;
 int STRIPE_R5C_FULL_STRIPE ;
 int STRIPE_R5C_PARTIAL_STRIPE ;
 int STRIPE_SYNCING ;
 int atomic_inc (int *) ;
 int r5c_is_writeback (struct r5l_log*) ;
 int r5c_make_stripe_write_out (struct stripe_head*) ;
 int r5c_tree_index (struct r5conf*,int ) ;
 scalar_t__ radix_tree_deref_slot_protected (void**,int *) ;
 int radix_tree_insert (int *,int ,void*) ;
 void** radix_tree_lookup_slot (int *,int ) ;
 int radix_tree_replace_slot (int *,void**,void*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int r5c_try_caching_write(struct r5conf *conf,
     struct stripe_head *sh,
     struct stripe_head_state *s,
     int disks)
{
 struct r5l_log *log = conf->log;
 int i;
 struct r5dev *dev;
 int to_cache = 0;
 void **pslot;
 sector_t tree_index;
 int ret;
 uintptr_t refcount;

 BUG_ON(!r5c_is_writeback(log));

 if (!test_bit(STRIPE_R5C_CACHING, &sh->state)) {
  if (s->injournal > 0 || s->written > 0)
   return -EAGAIN;

  set_bit(STRIPE_R5C_CACHING, &sh->state);
 }
 if (s->failed || test_bit(STRIPE_SYNCING, &sh->state)) {
  r5c_make_stripe_write_out(sh);
  return -EAGAIN;
 }

 for (i = disks; i--; ) {
  dev = &sh->dev[i];

  if (dev->towrite && !test_bit(R5_OVERWRITE, &dev->flags) &&
      !test_bit(R5_InJournal, &dev->flags)) {
   r5c_make_stripe_write_out(sh);
   return -EAGAIN;
  }
 }


 if (!test_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state) &&
     !test_bit(STRIPE_R5C_FULL_STRIPE, &sh->state)) {
  tree_index = r5c_tree_index(conf, sh->sector);
  spin_lock(&log->tree_lock);
  pslot = radix_tree_lookup_slot(&log->big_stripe_tree,
            tree_index);
  if (pslot) {
   refcount = (uintptr_t)radix_tree_deref_slot_protected(
    pslot, &log->tree_lock) >>
    R5C_RADIX_COUNT_SHIFT;
   radix_tree_replace_slot(
    &log->big_stripe_tree, pslot,
    (void *)((refcount + 1) << R5C_RADIX_COUNT_SHIFT));
  } else {




   ret = radix_tree_insert(
    &log->big_stripe_tree, tree_index,
    (void *)(1 << R5C_RADIX_COUNT_SHIFT));
   if (ret) {
    spin_unlock(&log->tree_lock);
    r5c_make_stripe_write_out(sh);
    return -EAGAIN;
   }
  }
  spin_unlock(&log->tree_lock);





  set_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state);
  atomic_inc(&conf->r5c_cached_partial_stripes);
 }

 for (i = disks; i--; ) {
  dev = &sh->dev[i];
  if (dev->towrite) {
   set_bit(R5_Wantwrite, &dev->flags);
   set_bit(R5_Wantdrain, &dev->flags);
   set_bit(R5_LOCKED, &dev->flags);
   to_cache++;
  }
 }

 if (to_cache) {
  set_bit(STRIPE_OP_BIODRAIN, &s->ops_request);





  set_bit(STRIPE_LOG_TRAPPED, &sh->state);
 }

 return 0;
}
