
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ktime_t ;
typedef scalar_t__ int64_t ;


 int MAX_SCHEDULE_TIMEOUT ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int ns_to_ktime (scalar_t__) ;
 int nsecs_to_jiffies64 (int) ;

signed long drm_timeout_abs_to_jiffies(int64_t timeout_nsec)
{
 ktime_t abs_timeout, now;
 u64 timeout_ns, timeout_jiffies64;


 if (timeout_nsec == 0)
  return 0;

 abs_timeout = ns_to_ktime(timeout_nsec);
 now = ktime_get();

 if (!ktime_after(abs_timeout, now))
  return 0;

 timeout_ns = ktime_to_ns(ktime_sub(abs_timeout, now));

 timeout_jiffies64 = nsecs_to_jiffies64(timeout_ns);

 if (timeout_jiffies64 >= MAX_SCHEDULE_TIMEOUT - 1)
  return MAX_SCHEDULE_TIMEOUT - 1;

 return timeout_jiffies64 + 1;
}
