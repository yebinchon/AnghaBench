
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int hotplug_worker; int hotplug_worker_initialized; int lock; int state_worker; int state_worker_initialized; int defer_initialization; } ;
typedef enum sony_worker { ____Placeholder_sony_worker } sony_worker ;




 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void sony_schedule_work(struct sony_sc *sc,
          enum sony_worker which)
{
 unsigned long flags;

 switch (which) {
 case 128:
  spin_lock_irqsave(&sc->lock, flags);
  if (!sc->defer_initialization && sc->state_worker_initialized)
   schedule_work(&sc->state_worker);
  spin_unlock_irqrestore(&sc->lock, flags);
  break;
 case 129:
  if (sc->hotplug_worker_initialized)
   schedule_work(&sc->hotplug_worker);
  break;
 }
}
