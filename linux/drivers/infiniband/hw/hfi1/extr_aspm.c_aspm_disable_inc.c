
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int aspm_lock; int aspm_disabled_cnt; } ;


 int aspm_disable (struct hfi1_devdata*) ;
 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void aspm_disable_inc(struct hfi1_devdata *dd)
{
 unsigned long flags;

 spin_lock_irqsave(&dd->aspm_lock, flags);
 aspm_disable(dd);
 atomic_inc(&dd->aspm_disabled_cnt);
 spin_unlock_irqrestore(&dd->aspm_lock, flags);
}
