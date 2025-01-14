
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxbig_led_timer {unsigned long delay_on; unsigned long delay_off; int mode; } ;
typedef enum netxbig_led_mode { ____Placeholder_netxbig_led_mode } netxbig_led_mode ;


 int EINVAL ;

__attribute__((used)) static int netxbig_led_get_timer_mode(enum netxbig_led_mode *mode,
          unsigned long delay_on,
          unsigned long delay_off,
          struct netxbig_led_timer *timer,
          int num_timer)
{
 int i;

 for (i = 0; i < num_timer; i++) {
  if (timer[i].delay_on == delay_on &&
      timer[i].delay_off == delay_off) {
   *mode = timer[i].mode;
   return 0;
  }
 }
 return -EINVAL;
}
