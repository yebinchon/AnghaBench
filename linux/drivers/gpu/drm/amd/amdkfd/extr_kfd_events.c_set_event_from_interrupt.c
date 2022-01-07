
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int dummy; } ;
struct kfd_event {int dummy; } ;


 int acknowledge_signal (struct kfd_process*,struct kfd_event*) ;
 scalar_t__ event_can_be_gpu_signaled (struct kfd_event*) ;
 int set_event (struct kfd_event*) ;

__attribute__((used)) static void set_event_from_interrupt(struct kfd_process *p,
     struct kfd_event *ev)
{
 if (ev && event_can_be_gpu_signaled(ev)) {
  acknowledge_signal(p, ev);
  set_event(ev);
 }
}
