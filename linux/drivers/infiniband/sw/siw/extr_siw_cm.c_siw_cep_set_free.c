
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cep {int waitq; int lock; scalar_t__ in_use; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void siw_cep_set_free(struct siw_cep *cep)
{
 unsigned long flags;

 spin_lock_irqsave(&cep->lock, flags);
 cep->in_use = 0;
 spin_unlock_irqrestore(&cep->lock, flags);

 wake_up(&cep->waitq);
}
