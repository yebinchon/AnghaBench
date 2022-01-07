
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cep {int in_use; int lock; int waitq; } ;


 int current ;
 int flush_signals (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static void siw_cep_set_inuse(struct siw_cep *cep)
{
 unsigned long flags;
retry:
 spin_lock_irqsave(&cep->lock, flags);

 if (cep->in_use) {
  spin_unlock_irqrestore(&cep->lock, flags);
  wait_event_interruptible(cep->waitq, !cep->in_use);
  if (signal_pending(current))
   flush_signals(current);
  goto retry;
 } else {
  cep->in_use = 1;
  spin_unlock_irqrestore(&cep->lock, flags);
 }
}
