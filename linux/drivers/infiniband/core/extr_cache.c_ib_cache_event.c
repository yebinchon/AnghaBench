
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_update_work {int enforce_security; int work; int port_num; int device; } ;
struct ib_event_handler {int dummy; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {scalar_t__ event; TYPE_1__ element; int device; } ;


 int GFP_ATOMIC ;
 scalar_t__ IB_EVENT_CLIENT_REREGISTER ;
 scalar_t__ IB_EVENT_GID_CHANGE ;
 scalar_t__ IB_EVENT_LID_CHANGE ;
 scalar_t__ IB_EVENT_PKEY_CHANGE ;
 scalar_t__ IB_EVENT_PORT_ACTIVE ;
 scalar_t__ IB_EVENT_PORT_ERR ;
 int INIT_WORK (int *,int ) ;
 int ib_cache_task ;
 int ib_wq ;
 struct ib_update_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void ib_cache_event(struct ib_event_handler *handler,
      struct ib_event *event)
{
 struct ib_update_work *work;

 if (event->event == IB_EVENT_PORT_ERR ||
     event->event == IB_EVENT_PORT_ACTIVE ||
     event->event == IB_EVENT_LID_CHANGE ||
     event->event == IB_EVENT_PKEY_CHANGE ||
     event->event == IB_EVENT_CLIENT_REREGISTER ||
     event->event == IB_EVENT_GID_CHANGE) {
  work = kmalloc(sizeof *work, GFP_ATOMIC);
  if (work) {
   INIT_WORK(&work->work, ib_cache_task);
   work->device = event->device;
   work->port_num = event->element.port_num;
   if (event->event == IB_EVENT_PKEY_CHANGE ||
       event->event == IB_EVENT_GID_CHANGE)
    work->enforce_security = 1;
   else
    work->enforce_security = 0;

   queue_work(ib_wq, &work->work);
  }
 }
}
