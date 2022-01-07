
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;


 unsigned long MAX_SCHEDULE_TIMEOUT ;
 unsigned long nsecs_to_jiffies_timeout (scalar_t__) ;

__attribute__((used)) static unsigned long to_wait_timeout(s64 timeout_ns)
{
 if (timeout_ns < 0)
  return MAX_SCHEDULE_TIMEOUT;

 if (timeout_ns == 0)
  return 0;

 return nsecs_to_jiffies_timeout(timeout_ns);
}
