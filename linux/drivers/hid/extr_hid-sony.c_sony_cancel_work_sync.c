
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int state_worker; int lock; scalar_t__ state_worker_initialized; int hotplug_worker; scalar_t__ hotplug_worker_initialized; } ;


 int cancel_work_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void sony_cancel_work_sync(struct sony_sc *sc)
{
 unsigned long flags;

 if (sc->hotplug_worker_initialized)
  cancel_work_sync(&sc->hotplug_worker);
 if (sc->state_worker_initialized) {
  spin_lock_irqsave(&sc->lock, flags);
  sc->state_worker_initialized = 0;
  spin_unlock_irqrestore(&sc->lock, flags);
  cancel_work_sync(&sc->state_worker);
 }
}
