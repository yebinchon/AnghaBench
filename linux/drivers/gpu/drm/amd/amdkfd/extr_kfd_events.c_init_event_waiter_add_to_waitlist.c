
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_event_waiter {int wait; int activated; struct kfd_event* event; } ;
struct kfd_event {int wq; } ;


 int add_wait_queue (int *,int *) ;

__attribute__((used)) static void init_event_waiter_add_to_waitlist(struct kfd_event_waiter *waiter)
{
 struct kfd_event *ev = waiter->event;




 if (!waiter->activated)
  add_wait_queue(&ev->wq, &waiter->wait);
}
