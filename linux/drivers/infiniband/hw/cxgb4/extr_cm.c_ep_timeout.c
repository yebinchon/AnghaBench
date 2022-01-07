
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int next; } ;
struct TYPE_3__ {int flags; } ;
struct c4iw_ep {TYPE_2__ entry; TYPE_1__ com; } ;


 int TIMEOUT ;
 struct c4iw_ep* ep ;
 struct c4iw_ep* from_timer (int ,struct timer_list*,int ) ;
 int list_add_tail (TYPE_2__*,int *) ;
 int queue_work (int ,int *) ;
 int skb_work ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int timeout_list ;
 int timeout_lock ;
 int timer ;
 int workq ;

__attribute__((used)) static void ep_timeout(struct timer_list *t)
{
 struct c4iw_ep *ep = from_timer(ep, t, timer);
 int kickit = 0;

 spin_lock(&timeout_lock);
 if (!test_and_set_bit(TIMEOUT, &ep->com.flags)) {



  if (!ep->entry.next) {
   list_add_tail(&ep->entry, &timeout_list);
   kickit = 1;
  }
 }
 spin_unlock(&timeout_lock);
 if (kickit)
  queue_work(workq, &skb_work);
}
