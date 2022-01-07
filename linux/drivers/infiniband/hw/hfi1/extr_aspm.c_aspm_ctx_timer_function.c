
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hfi1_ctxtdata {int aspm_enabled; int aspm_lock; int dd; } ;


 int aspm_enable_dec (int ) ;
 int aspm_timer ;
 struct hfi1_ctxtdata* from_timer (int ,struct timer_list*,int ) ;
 struct hfi1_ctxtdata* rcd ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void aspm_ctx_timer_function(struct timer_list *t)
{
 struct hfi1_ctxtdata *rcd = from_timer(rcd, t, aspm_timer);
 unsigned long flags;

 spin_lock_irqsave(&rcd->aspm_lock, flags);
 aspm_enable_dec(rcd->dd);
 rcd->aspm_enabled = 1;
 spin_unlock_irqrestore(&rcd->aspm_lock, flags);
}
