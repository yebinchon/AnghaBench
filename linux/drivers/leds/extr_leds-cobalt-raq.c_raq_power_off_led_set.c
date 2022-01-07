
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_POWER_OFF ;
 int led_port ;
 int led_value ;
 int led_value_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void raq_power_off_led_set(struct led_classdev *led_cdev,
      enum led_brightness brightness)
{
 unsigned long flags;

 spin_lock_irqsave(&led_value_lock, flags);

 if (brightness)
  led_value |= LED_POWER_OFF;
 else
  led_value &= ~LED_POWER_OFF;
 writeb(led_value, led_port);

 spin_unlock_irqrestore(&led_value_lock, flags);
}
