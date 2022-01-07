
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_event {scalar_t__ type; } ;


 scalar_t__ KFD_EVENT_TYPE_SIGNAL ;

__attribute__((used)) static bool event_can_be_cpu_signaled(const struct kfd_event *ev)
{
 return ev->type == KFD_EVENT_TYPE_SIGNAL;
}
