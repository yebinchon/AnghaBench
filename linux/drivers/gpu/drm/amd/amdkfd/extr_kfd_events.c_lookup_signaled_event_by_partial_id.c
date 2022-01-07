
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_process {int event_idr; int signal_page; } ;
struct kfd_event {int dummy; } ;


 int KFD_SIGNAL_EVENT_LIMIT ;
 scalar_t__ UNSIGNALED_EVENT_SLOT ;
 struct kfd_event* idr_find (int *,int) ;
 scalar_t__* page_slots (int ) ;

__attribute__((used)) static struct kfd_event *lookup_signaled_event_by_partial_id(
 struct kfd_process *p, uint32_t id, uint32_t bits)
{
 struct kfd_event *ev;

 if (!p->signal_page || id >= KFD_SIGNAL_EVENT_LIMIT)
  return ((void*)0);




 if (bits > 31 || (1U << bits) >= KFD_SIGNAL_EVENT_LIMIT) {
  if (page_slots(p->signal_page)[id] == UNSIGNALED_EVENT_SLOT)
   return ((void*)0);

  return idr_find(&p->event_idr, id);
 }




 for (ev = ((void*)0); id < KFD_SIGNAL_EVENT_LIMIT && !ev; id += 1U << bits) {
  if (page_slots(p->signal_page)[id] == UNSIGNALED_EVENT_SLOT)
   continue;

  ev = idr_find(&p->event_idr, id);
 }

 return ev;
}
