
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ns2_led_data {int num_modes; int rw_lock; TYPE_1__* modval; int slow; int cmd; int can_sleep; } ;
typedef enum ns2_led_modes { ____Placeholder_ns2_led_modes } ns2_led_modes ;
struct TYPE_2__ {int mode; int slow_level; int cmd_level; } ;


 int gpio_set_value (int ,int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ns2_led_set_mode(struct ns2_led_data *led_dat,
        enum ns2_led_modes mode)
{
 int i;
 bool found = 0;
 unsigned long flags;

 for (i = 0; i < led_dat->num_modes; i++)
  if (mode == led_dat->modval[i].mode) {
   found = 1;
   break;
  }

 if (!found)
  return;

 write_lock_irqsave(&led_dat->rw_lock, flags);

 if (!led_dat->can_sleep) {
  gpio_set_value(led_dat->cmd,
          led_dat->modval[i].cmd_level);
  gpio_set_value(led_dat->slow,
          led_dat->modval[i].slow_level);
  goto exit_unlock;
 }

 gpio_set_value_cansleep(led_dat->cmd, led_dat->modval[i].cmd_level);
 gpio_set_value_cansleep(led_dat->slow, led_dat->modval[i].slow_level);

exit_unlock:
 write_unlock_irqrestore(&led_dat->rw_lock, flags);
}
