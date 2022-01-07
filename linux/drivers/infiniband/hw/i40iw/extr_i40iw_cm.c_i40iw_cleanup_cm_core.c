
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_core {scalar_t__ disconn_wq; scalar_t__ event_wq; int ht_lock; int tcp_timer; } ;


 int del_timer_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ timer_pending (int *) ;

void i40iw_cleanup_cm_core(struct i40iw_cm_core *cm_core)
{
 unsigned long flags;

 if (!cm_core)
  return;

 spin_lock_irqsave(&cm_core->ht_lock, flags);
 if (timer_pending(&cm_core->tcp_timer))
  del_timer_sync(&cm_core->tcp_timer);
 spin_unlock_irqrestore(&cm_core->ht_lock, flags);

 if (cm_core->event_wq)
  destroy_workqueue(cm_core->event_wq);
 if (cm_core->disconn_wq)
  destroy_workqueue(cm_core->disconn_wq);
}
