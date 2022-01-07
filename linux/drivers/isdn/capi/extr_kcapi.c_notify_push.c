
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct capictr_event {unsigned int type; int work; int controller; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int do_notify_work ;
 int kcapi_wq ;
 struct capictr_event* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int notify_push(unsigned int event_type, u32 controller)
{
 struct capictr_event *event = kmalloc(sizeof(*event), GFP_ATOMIC);

 if (!event)
  return -ENOMEM;

 INIT_WORK(&event->work, do_notify_work);
 event->type = event_type;
 event->controller = controller;

 queue_work(kcapi_wq, &event->work);
 return 0;
}
