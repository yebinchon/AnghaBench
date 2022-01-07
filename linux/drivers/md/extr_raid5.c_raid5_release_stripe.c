
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int hash_lock_index; int count; int release_list; int state; struct r5conf* raid_conf; } ;
struct r5conf {int device_lock; TYPE_1__* mddev; int released_stripes; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int thread; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int STRIPE_ON_RELEASE_LIST ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 scalar_t__ atomic_dec_and_lock_irqsave (int *,int *,unsigned long) ;
 int do_release_stripe (struct r5conf*,struct stripe_head*,struct list_head*) ;
 int llist_add (int *,int *) ;
 int md_wakeup_thread (int ) ;
 int release_inactive_stripe_list (struct r5conf*,struct list_head*,int) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void raid5_release_stripe(struct stripe_head *sh)
{
 struct r5conf *conf = sh->raid_conf;
 unsigned long flags;
 struct list_head list;
 int hash;
 bool wakeup;



 if (atomic_add_unless(&sh->count, -1, 1))
  return;

 if (unlikely(!conf->mddev->thread) ||
  test_and_set_bit(STRIPE_ON_RELEASE_LIST, &sh->state))
  goto slow_path;
 wakeup = llist_add(&sh->release_list, &conf->released_stripes);
 if (wakeup)
  md_wakeup_thread(conf->mddev->thread);
 return;
slow_path:

 if (atomic_dec_and_lock_irqsave(&sh->count, &conf->device_lock, flags)) {
  INIT_LIST_HEAD(&list);
  hash = sh->hash_lock_index;
  do_release_stripe(conf, sh, &list);
  spin_unlock_irqrestore(&conf->device_lock, flags);
  release_inactive_stripe_list(conf, &list, hash);
 }
}
