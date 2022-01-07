
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_notify {scalar_t__ size; int block; int (* func ) (struct nvkm_notify*) ;struct nvkm_event* event; int head; int * data; scalar_t__ flags; int work; } ;
struct nvkm_event {int list_lock; int list; TYPE_1__* func; int refs; } ;
struct TYPE_2__ {int (* ctor ) (struct nvkm_object*,void*,scalar_t__,struct nvkm_notify*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int NVKM_NOTIFY_WORK ;
 int * kmalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 int nvkm_notify_work ;
 int set_bit (int ,scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nvkm_object*,void*,scalar_t__,struct nvkm_notify*) ;

int
nvkm_notify_init(struct nvkm_object *object, struct nvkm_event *event,
   int (*func)(struct nvkm_notify *), bool work,
   void *data, u32 size, u32 reply,
   struct nvkm_notify *notify)
{
 unsigned long flags;
 int ret = -ENODEV;
 if ((notify->event = event), event->refs) {
  ret = event->func->ctor(object, data, size, notify);
  if (ret == 0 && (ret = -EINVAL, notify->size == reply)) {
   notify->flags = 0;
   notify->block = 1;
   notify->func = func;
   notify->data = ((void*)0);
   if (ret = 0, work) {
    INIT_WORK(&notify->work, nvkm_notify_work);
    set_bit(NVKM_NOTIFY_WORK, &notify->flags);
    notify->data = kmalloc(reply, GFP_KERNEL);
    if (!notify->data)
     ret = -ENOMEM;
   }
  }
  if (ret == 0) {
   spin_lock_irqsave(&event->list_lock, flags);
   list_add_tail(&notify->head, &event->list);
   spin_unlock_irqrestore(&event->list_lock, flags);
  }
 }
 if (ret)
  notify->event = ((void*)0);
 return ret;
}
