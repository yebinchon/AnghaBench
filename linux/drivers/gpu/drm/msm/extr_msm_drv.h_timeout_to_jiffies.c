
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int ktime_t ;


 scalar_t__ ktime_compare (int const,int ) ;
 int ktime_get () ;
 int ktime_sub (int const,int ) ;
 struct timespec ktime_to_timespec (int ) ;
 unsigned long timespec_to_jiffies (struct timespec*) ;

__attribute__((used)) static inline unsigned long timeout_to_jiffies(const ktime_t *timeout)
{
 ktime_t now = ktime_get();
 unsigned long remaining_jiffies;

 if (ktime_compare(*timeout, now) < 0) {
  remaining_jiffies = 0;
 } else {
  ktime_t rem = ktime_sub(*timeout, now);
  struct timespec ts = ktime_to_timespec(rem);
  remaining_jiffies = timespec_to_jiffies(&ts);
 }

 return remaining_jiffies;
}
