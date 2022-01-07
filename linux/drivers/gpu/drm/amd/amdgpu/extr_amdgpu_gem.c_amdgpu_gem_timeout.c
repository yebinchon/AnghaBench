
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ktime_t ;
typedef scalar_t__ int64_t ;


 unsigned long MAX_SCHEDULE_TIMEOUT ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int ns_to_ktime (scalar_t__) ;
 unsigned long nsecs_to_jiffies (scalar_t__) ;

unsigned long amdgpu_gem_timeout(uint64_t timeout_ns)
{
 unsigned long timeout_jiffies;
 ktime_t timeout;


 if (((int64_t)timeout_ns) < 0)
  return MAX_SCHEDULE_TIMEOUT;

 timeout = ktime_sub(ns_to_ktime(timeout_ns), ktime_get());
 if (ktime_to_ns(timeout) < 0)
  return 0;

 timeout_jiffies = nsecs_to_jiffies(ktime_to_ns(timeout));

 if (timeout_jiffies > MAX_SCHEDULE_TIMEOUT )
  return MAX_SCHEDULE_TIMEOUT - 1;

 return timeout_jiffies;
}
