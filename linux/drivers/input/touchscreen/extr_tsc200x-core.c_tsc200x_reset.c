
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {scalar_t__ reset_gpio; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tsc200x_reset(struct tsc200x *ts)
{
 if (ts->reset_gpio) {
  gpiod_set_value_cansleep(ts->reset_gpio, 1);
  usleep_range(100, 500);
  gpiod_set_value_cansleep(ts->reset_gpio, 0);
 }
}
