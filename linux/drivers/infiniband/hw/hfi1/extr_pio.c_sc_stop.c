
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_context {int flags; int halt_wait; int alloc_lock; } ;


 int SCF_ENABLED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void sc_stop(struct send_context *sc, int flag)
{
 unsigned long flags;


 spin_lock_irqsave(&sc->alloc_lock, flags);

 sc->flags |= flag;
 sc->flags &= ~SCF_ENABLED;
 spin_unlock_irqrestore(&sc->alloc_lock, flags);
 wake_up(&sc->halt_wait);
}
