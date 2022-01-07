
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_notify {scalar_t__ size; int * data; int work; int flags; scalar_t__ block; struct nvkm_event* event; } ;
struct nvkm_event {int refs_lock; int list_lock; } ;


 int BUG_ON (int) ;
 int NVKM_NOTIFY_WORK ;
 int assert_spin_locked (int *) ;
 int memcpy (void*,void*,scalar_t__) ;
 int nvkm_notify_func (struct nvkm_notify*) ;
 int nvkm_notify_put_locked (struct nvkm_notify*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void
nvkm_notify_send(struct nvkm_notify *notify, void *data, u32 size)
{
 struct nvkm_event *event = notify->event;
 unsigned long flags;

 assert_spin_locked(&event->list_lock);
 BUG_ON(size != notify->size);

 spin_lock_irqsave(&event->refs_lock, flags);
 if (notify->block) {
  spin_unlock_irqrestore(&event->refs_lock, flags);
  return;
 }
 nvkm_notify_put_locked(notify);
 spin_unlock_irqrestore(&event->refs_lock, flags);

 if (test_bit(NVKM_NOTIFY_WORK, &notify->flags)) {
  memcpy((void *)notify->data, data, size);
  schedule_work(&notify->work);
 } else {
  notify->data = data;
  nvkm_notify_func(notify);
  notify->data = ((void*)0);
 }
}
