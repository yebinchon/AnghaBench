
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct teimgr {TYPE_1__* mgr; int timer; } ;
struct layer2 {struct teimgr* tm; int list; } ;
struct TYPE_2__ {int lock; } ;


 int kfree (struct teimgr*) ;
 int list_del (int *) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

void
TEIrelease(struct layer2 *l2)
{
 struct teimgr *tm = l2->tm;
 u_long flags;

 mISDN_FsmDelTimer(&tm->timer, 1);
 write_lock_irqsave(&tm->mgr->lock, flags);
 list_del(&l2->list);
 write_unlock_irqrestore(&tm->mgr->lock, flags);
 l2->tm = ((void*)0);
 kfree(tm);
}
