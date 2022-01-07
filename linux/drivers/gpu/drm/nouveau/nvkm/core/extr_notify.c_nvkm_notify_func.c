
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_notify {int (* func ) (struct nvkm_notify*) ;int flags; struct nvkm_event* event; } ;
struct nvkm_event {int refs_lock; } ;


 int NVKM_NOTIFY_KEEP ;
 int NVKM_NOTIFY_USER ;
 int nvkm_notify_get_locked (struct nvkm_notify*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nvkm_notify*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline void
nvkm_notify_func(struct nvkm_notify *notify)
{
 struct nvkm_event *event = notify->event;
 int ret = notify->func(notify);
 unsigned long flags;
 if ((ret == NVKM_NOTIFY_KEEP) ||
     !test_and_clear_bit(NVKM_NOTIFY_USER, &notify->flags)) {
  spin_lock_irqsave(&event->refs_lock, flags);
  nvkm_notify_get_locked(notify);
  spin_unlock_irqrestore(&event->refs_lock, flags);
 }
}
