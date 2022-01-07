
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_notify {int work; int flags; struct nvkm_event* event; } ;
struct nvkm_event {int refs_lock; } ;


 int NVKM_NOTIFY_USER ;
 int NVKM_NOTIFY_WORK ;
 int flush_work (int *) ;
 scalar_t__ likely (struct nvkm_event*) ;
 int nvkm_notify_put_locked (struct nvkm_notify*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
nvkm_notify_put(struct nvkm_notify *notify)
{
 struct nvkm_event *event = notify->event;
 unsigned long flags;
 if (likely(event) &&
     test_and_clear_bit(NVKM_NOTIFY_USER, &notify->flags)) {
  spin_lock_irqsave(&event->refs_lock, flags);
  nvkm_notify_put_locked(notify);
  spin_unlock_irqrestore(&event->refs_lock, flags);
  if (test_bit(NVKM_NOTIFY_WORK, &notify->flags))
   flush_work(&notify->work);
 }
}
