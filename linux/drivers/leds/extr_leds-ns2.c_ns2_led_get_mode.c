
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ns2_led_data {int num_modes; TYPE_1__* modval; int slow; int cmd; } ;
typedef enum ns2_led_modes { ____Placeholder_ns2_led_modes } ns2_led_modes ;
struct TYPE_2__ {int cmd_level; int slow_level; int mode; } ;


 int EINVAL ;
 int gpio_get_value_cansleep (int ) ;

__attribute__((used)) static int ns2_led_get_mode(struct ns2_led_data *led_dat,
       enum ns2_led_modes *mode)
{
 int i;
 int ret = -EINVAL;
 int cmd_level;
 int slow_level;

 cmd_level = gpio_get_value_cansleep(led_dat->cmd);
 slow_level = gpio_get_value_cansleep(led_dat->slow);

 for (i = 0; i < led_dat->num_modes; i++) {
  if (cmd_level == led_dat->modval[i].cmd_level &&
      slow_level == led_dat->modval[i].slow_level) {
   *mode = led_dat->modval[i].mode;
   ret = 0;
   break;
  }
 }

 return ret;
}
