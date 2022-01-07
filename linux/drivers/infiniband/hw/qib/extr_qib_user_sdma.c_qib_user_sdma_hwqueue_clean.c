
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int sdma_lock; } ;


 int qib_sdma_make_progress (struct qib_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qib_user_sdma_hwqueue_clean(struct qib_pportdata *ppd)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&ppd->sdma_lock, flags);
 ret = qib_sdma_make_progress(ppd);
 spin_unlock_irqrestore(&ppd->sdma_lock, flags);

 return ret;
}
