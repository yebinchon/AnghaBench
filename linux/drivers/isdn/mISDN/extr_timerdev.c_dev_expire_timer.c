
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct timer_list {int dummy; } ;
struct mISDNtimer {scalar_t__ id; TYPE_1__* dev; int list; } ;
struct TYPE_2__ {int lock; int wait; int expired; } ;


 struct mISDNtimer* from_timer (int ,struct timer_list*,int ) ;
 int list_move_tail (int *,int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 struct mISDNtimer* timer ;
 int tl ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
dev_expire_timer(struct timer_list *t)
{
 struct mISDNtimer *timer = from_timer(timer, t, tl);
 u_long flags;

 spin_lock_irqsave(&timer->dev->lock, flags);
 if (timer->id >= 0)
  list_move_tail(&timer->list, &timer->dev->expired);
 wake_up_interruptible(&timer->dev->wait);
 spin_unlock_irqrestore(&timer->dev->lock, flags);
}
