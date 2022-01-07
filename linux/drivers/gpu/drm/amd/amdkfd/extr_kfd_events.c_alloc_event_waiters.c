
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct kfd_event_waiter {int activated; int wait; } ;


 int GFP_KERNEL ;
 int init_wait (int *) ;
 struct kfd_event_waiter* kmalloc_array (size_t,int,int ) ;

__attribute__((used)) static struct kfd_event_waiter *alloc_event_waiters(uint32_t num_events)
{
 struct kfd_event_waiter *event_waiters;
 uint32_t i;

 event_waiters = kmalloc_array(num_events,
     sizeof(struct kfd_event_waiter),
     GFP_KERNEL);

 for (i = 0; (event_waiters) && (i < num_events) ; i++) {
  init_wait(&event_waiters[i].wait);
  event_waiters[i].activated = 0;
 }

 return event_waiters;
}
