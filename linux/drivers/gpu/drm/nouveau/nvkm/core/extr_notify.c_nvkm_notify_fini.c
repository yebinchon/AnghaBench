
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_notify {TYPE_1__* event; scalar_t__ data; int head; } ;
struct TYPE_2__ {int list_lock; } ;


 int kfree (void*) ;
 int list_del (int *) ;
 int nvkm_notify_put (struct nvkm_notify*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nvkm_notify_fini(struct nvkm_notify *notify)
{
 unsigned long flags;
 if (notify->event) {
  nvkm_notify_put(notify);
  spin_lock_irqsave(&notify->event->list_lock, flags);
  list_del(&notify->head);
  spin_unlock_irqrestore(&notify->event->list_lock, flags);
  kfree((void *)notify->data);
  notify->event = ((void*)0);
 }
}
