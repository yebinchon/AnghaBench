
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dev; } ;
struct c4iw_ep {TYPE_1__ com; int hwtid; } ;
struct TYPE_4__ {int hwtids; } ;


 int GFP_KERNEL ;
 int __xa_insert (int *,int ,struct c4iw_ep*,int ) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int insert_ep_tid(struct c4iw_ep *ep)
{
 unsigned long flags;
 int err;

 xa_lock_irqsave(&ep->com.dev->hwtids, flags);
 err = __xa_insert(&ep->com.dev->hwtids, ep->hwtid, ep, GFP_KERNEL);
 xa_unlock_irqrestore(&ep->com.dev->hwtids, flags);

 return err;
}
