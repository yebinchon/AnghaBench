
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct kfd_event_waiter {scalar_t__ activated; int event; } ;


 size_t KFD_IOC_WAIT_RESULT_COMPLETE ;
 size_t KFD_IOC_WAIT_RESULT_FAIL ;
 size_t KFD_IOC_WAIT_RESULT_TIMEOUT ;

__attribute__((used)) static uint32_t test_event_condition(bool all, uint32_t num_events,
    struct kfd_event_waiter *event_waiters)
{
 uint32_t i;
 uint32_t activated_count = 0;

 for (i = 0; i < num_events; i++) {
  if (!event_waiters[i].event)
   return KFD_IOC_WAIT_RESULT_FAIL;

  if (event_waiters[i].activated) {
   if (!all)
    return KFD_IOC_WAIT_RESULT_COMPLETE;

   activated_count++;
  }
 }

 return activated_count == num_events ?
  KFD_IOC_WAIT_RESULT_COMPLETE : KFD_IOC_WAIT_RESULT_TIMEOUT;
}
