
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct kfd_process {int event_idr; } ;
struct kfd_event {int event_id; } ;


 int GFP_KERNEL ;
 int KFD_FIRST_NONSIGNAL_EVENT_ID ;
 scalar_t__ KFD_LAST_NONSIGNAL_EVENT_ID ;
 int idr_alloc (int *,struct kfd_event*,int ,scalar_t__,int ) ;

__attribute__((used)) static int create_other_event(struct kfd_process *p, struct kfd_event *ev)
{





 int id = idr_alloc(&p->event_idr, ev, KFD_FIRST_NONSIGNAL_EVENT_ID,
      (uint32_t)KFD_LAST_NONSIGNAL_EVENT_ID + 1,
      GFP_KERNEL);

 if (id < 0)
  return id;
 ev->event_id = id;

 return 0;
}
