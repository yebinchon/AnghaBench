
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2497_st {int time_prev; } ;
typedef scalar_t__ s64 ;


 int ERESTARTSYS ;
 scalar_t__ LTC2497_CONVERSION_TIME_MS ;
 int ktime_get () ;
 scalar_t__ ktime_ms_delta (int ,int ) ;
 scalar_t__ msleep_interruptible (scalar_t__) ;

__attribute__((used)) static int ltc2497_wait_conv(struct ltc2497_st *st)
{
 s64 time_elapsed;

 time_elapsed = ktime_ms_delta(ktime_get(), st->time_prev);

 if (time_elapsed < LTC2497_CONVERSION_TIME_MS) {



  if (msleep_interruptible(
      LTC2497_CONVERSION_TIME_MS - time_elapsed))
   return -ERESTARTSYS;

  return 0;
 }

 if (time_elapsed - LTC2497_CONVERSION_TIME_MS <= 0) {



  return 0;
 }

 return 1;
}
