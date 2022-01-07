
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int sdma_lock; } ;


 int __qib_sdma_running (struct qib_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qib_sdma_running(struct qib_pportdata *ppd)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&ppd->sdma_lock, flags);
 ret = __qib_sdma_running(ppd);
 spin_unlock_irqrestore(&ppd->sdma_lock, flags);

 return ret;
}
