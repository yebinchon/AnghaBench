
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct c4iw_ep {TYPE_2__ com; int hwtid; } ;
struct TYPE_3__ {int hwtids; int wait; } ;


 int __xa_erase (int *,int ) ;
 int wake_up (int *) ;
 scalar_t__ xa_empty (int *) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void remove_ep_tid(struct c4iw_ep *ep)
{
 unsigned long flags;

 xa_lock_irqsave(&ep->com.dev->hwtids, flags);
 __xa_erase(&ep->com.dev->hwtids, ep->hwtid);
 if (xa_empty(&ep->com.dev->hwtids))
  wake_up(&ep->com.dev->wait);
 xa_unlock_irqrestore(&ep->com.dev->hwtids, flags);
}
