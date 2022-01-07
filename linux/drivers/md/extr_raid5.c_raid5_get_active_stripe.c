
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int count; TYPE_1__* group; int lru; int state; } ;
struct r5conf {scalar_t__ quiesce; int max_nr_stripes; int * hash_locks; int device_lock; int empty_inactive_list_nr; int * inactive_list; int active_stripes; int cache_state; int wait_for_stripe; int log; scalar_t__ generation; int wait_for_quiescent; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int stripes_cnt; } ;


 int BUG_ON (int) ;
 int R5_ALLOC_MORE ;
 int R5_DID_ALLOC ;
 int R5_INACTIVE_BLOCKED ;
 int STRIPE_EXPANDING ;
 int STRIPE_HANDLE ;
 struct stripe_head* __find_stripe (struct r5conf*,scalar_t__,scalar_t__) ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 struct stripe_head* get_free_stripe (struct r5conf*,int) ;
 int init_stripe (struct stripe_head*,scalar_t__,int) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int pr_debug (char*,unsigned long long) ;
 int r5c_check_stripe_cache_usage (struct r5conf*) ;
 int r5l_wake_reclaim (int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int stripe_hash_locks_hash (scalar_t__) ;
 int test_bit (int ,int *) ;
 int wait_event_lock_irq (int ,int,int ) ;

struct stripe_head *
raid5_get_active_stripe(struct r5conf *conf, sector_t sector,
   int previous, int noblock, int noquiesce)
{
 struct stripe_head *sh;
 int hash = stripe_hash_locks_hash(sector);
 int inc_empty_inactive_list_flag;

 pr_debug("get_stripe, sector %llu\n", (unsigned long long)sector);

 spin_lock_irq(conf->hash_locks + hash);

 do {
  wait_event_lock_irq(conf->wait_for_quiescent,
        conf->quiesce == 0 || noquiesce,
        *(conf->hash_locks + hash));
  sh = __find_stripe(conf, sector, conf->generation - previous);
  if (!sh) {
   if (!test_bit(R5_INACTIVE_BLOCKED, &conf->cache_state)) {
    sh = get_free_stripe(conf, hash);
    if (!sh && !test_bit(R5_DID_ALLOC,
           &conf->cache_state))
     set_bit(R5_ALLOC_MORE,
      &conf->cache_state);
   }
   if (noblock && sh == ((void*)0))
    break;

   r5c_check_stripe_cache_usage(conf);
   if (!sh) {
    set_bit(R5_INACTIVE_BLOCKED,
     &conf->cache_state);
    r5l_wake_reclaim(conf->log, 0);
    wait_event_lock_irq(
     conf->wait_for_stripe,
     !list_empty(conf->inactive_list + hash) &&
     (atomic_read(&conf->active_stripes)
      < (conf->max_nr_stripes * 3 / 4)
      || !test_bit(R5_INACTIVE_BLOCKED,
            &conf->cache_state)),
     *(conf->hash_locks + hash));
    clear_bit(R5_INACTIVE_BLOCKED,
       &conf->cache_state);
   } else {
    init_stripe(sh, sector, previous);
    atomic_inc(&sh->count);
   }
  } else if (!atomic_inc_not_zero(&sh->count)) {
   spin_lock(&conf->device_lock);
   if (!atomic_read(&sh->count)) {
    if (!test_bit(STRIPE_HANDLE, &sh->state))
     atomic_inc(&conf->active_stripes);
    BUG_ON(list_empty(&sh->lru) &&
           !test_bit(STRIPE_EXPANDING, &sh->state));
    inc_empty_inactive_list_flag = 0;
    if (!list_empty(conf->inactive_list + hash))
     inc_empty_inactive_list_flag = 1;
    list_del_init(&sh->lru);
    if (list_empty(conf->inactive_list + hash) && inc_empty_inactive_list_flag)
     atomic_inc(&conf->empty_inactive_list_nr);
    if (sh->group) {
     sh->group->stripes_cnt--;
     sh->group = ((void*)0);
    }
   }
   atomic_inc(&sh->count);
   spin_unlock(&conf->device_lock);
  }
 } while (sh == ((void*)0));

 spin_unlock_irq(conf->hash_locks + hash);
 return sh;
}
