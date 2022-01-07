
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_process {int dummy; } ;
struct kfd_event_waiter {int activated; struct kfd_event* event; } ;
struct kfd_event {int signaled; int auto_reset; } ;


 int EINVAL ;
 struct kfd_event* lookup_event_by_id (struct kfd_process*,int ) ;

__attribute__((used)) static int init_event_waiter_get_status(struct kfd_process *p,
  struct kfd_event_waiter *waiter,
  uint32_t event_id)
{
 struct kfd_event *ev = lookup_event_by_id(p, event_id);

 if (!ev)
  return -EINVAL;

 waiter->event = ev;
 waiter->activated = ev->signaled;
 ev->signaled = ev->signaled && !ev->auto_reset;

 return 0;
}
