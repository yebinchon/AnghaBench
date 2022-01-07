
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_event_handler {TYPE_1__* device; int list; } ;
struct TYPE_2__ {int event_handler_lock; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ib_unregister_event_handler(struct ib_event_handler *event_handler)
{
 unsigned long flags;

 spin_lock_irqsave(&event_handler->device->event_handler_lock, flags);
 list_del(&event_handler->list);
 spin_unlock_irqrestore(&event_handler->device->event_handler_lock, flags);
}
