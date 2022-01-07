
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int signal_page; } ;
struct kfd_event {size_t event_id; } ;


 int UNSIGNALED_EVENT_SLOT ;
 int * page_slots (int ) ;

__attribute__((used)) static void acknowledge_signal(struct kfd_process *p, struct kfd_event *ev)
{
 page_slots(p->signal_page)[ev->event_id] = UNSIGNALED_EVENT_SLOT;
}
