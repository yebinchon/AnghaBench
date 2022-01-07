
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {int dummy; } ;
typedef scalar_t__ (* lima_poll_func_t ) (struct lima_ip*) ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int ktime_add_us (int ,int) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int might_sleep_if (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int lima_poll_timeout(struct lima_ip *ip, lima_poll_func_t func,
        int sleep_us, int timeout_us)
{
 ktime_t timeout = ktime_add_us(ktime_get(), timeout_us);

 might_sleep_if(sleep_us);
 while (1) {
  if (func(ip))
   return 0;

  if (timeout_us && ktime_compare(ktime_get(), timeout) > 0)
   return -ETIMEDOUT;

  if (sleep_us)
   usleep_range((sleep_us >> 2) + 1, sleep_us);
 }
 return 0;
}
