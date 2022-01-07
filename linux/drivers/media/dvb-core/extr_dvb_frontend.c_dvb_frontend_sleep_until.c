
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int ktime_t ;


 int ktime_add_us (int ,int ) ;
 int ktime_get_boottime () ;
 int ktime_us_delta (int ,int ) ;
 int msleep (int) ;
 int udelay (int) ;

void dvb_frontend_sleep_until(ktime_t *waketime, u32 add_usec)
{
 s32 delta;

 *waketime = ktime_add_us(*waketime, add_usec);
 delta = ktime_us_delta(ktime_get_boottime(), *waketime);
 if (delta > 2500) {
  msleep((delta - 1500) / 1000);
  delta = ktime_us_delta(ktime_get_boottime(), *waketime);
 }
 if (delta > 0)
  udelay(delta);
}
