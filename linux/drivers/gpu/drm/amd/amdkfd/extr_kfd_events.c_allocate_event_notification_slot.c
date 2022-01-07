
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int signal_mapped_size; scalar_t__ signal_page; int event_idr; } ;
struct kfd_event {int event_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UNSIGNALED_EVENT_SLOT ;
 scalar_t__ allocate_signal_page (struct kfd_process*) ;
 int idr_alloc (int *,struct kfd_event*,int ,int,int ) ;
 int * page_slots (scalar_t__) ;

__attribute__((used)) static int allocate_event_notification_slot(struct kfd_process *p,
         struct kfd_event *ev)
{
 int id;

 if (!p->signal_page) {
  p->signal_page = allocate_signal_page(p);
  if (!p->signal_page)
   return -ENOMEM;

  p->signal_mapped_size = 256*8;
 }







 id = idr_alloc(&p->event_idr, ev, 0, p->signal_mapped_size / 8,
         GFP_KERNEL);
 if (id < 0)
  return id;

 ev->event_id = id;
 page_slots(p->signal_page)[id] = UNSIGNALED_EVENT_SLOT;

 return 0;
}
