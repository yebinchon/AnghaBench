
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* mddev; scalar_t__ retry_read_aligned; int wait_for_quiescent; int active_stripes; int wait_for_stripe; scalar_t__ hash_locks; struct list_head* inactive_list; int empty_inactive_list_nr; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int thread; } ;


 int NR_STRIPE_HASH_LOCKS ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 int list_empty_careful (struct list_head*) ;
 int list_splice_tail_init (struct list_head*,struct list_head*) ;
 int md_wakeup_thread (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void release_inactive_stripe_list(struct r5conf *conf,
      struct list_head *temp_inactive_list,
      int hash)
{
 int size;
 bool do_wakeup = 0;
 unsigned long flags;

 if (hash == NR_STRIPE_HASH_LOCKS) {
  size = NR_STRIPE_HASH_LOCKS;
  hash = NR_STRIPE_HASH_LOCKS - 1;
 } else
  size = 1;
 while (size) {
  struct list_head *list = &temp_inactive_list[size - 1];





  if (!list_empty_careful(list)) {
   spin_lock_irqsave(conf->hash_locks + hash, flags);
   if (list_empty(conf->inactive_list + hash) &&
       !list_empty(list))
    atomic_dec(&conf->empty_inactive_list_nr);
   list_splice_tail_init(list, conf->inactive_list + hash);
   do_wakeup = 1;
   spin_unlock_irqrestore(conf->hash_locks + hash, flags);
  }
  size--;
  hash--;
 }

 if (do_wakeup) {
  wake_up(&conf->wait_for_stripe);
  if (atomic_read(&conf->active_stripes) == 0)
   wake_up(&conf->wait_for_quiescent);
  if (conf->retry_read_aligned)
   md_wakeup_thread(conf->mddev->thread);
 }
}
