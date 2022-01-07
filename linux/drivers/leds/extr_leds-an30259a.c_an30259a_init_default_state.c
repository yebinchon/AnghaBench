
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct an30259a_led {int default_state; TYPE_1__ cdev; int num; struct an30259a* chip; } ;
struct an30259a {int regmap; } ;


 int AN30259A_LED_EN (int ) ;
 int AN30259A_REG_LEDCC (int ) ;
 int AN30259A_REG_LED_ON ;
 int LED_FULL ;
 void* LED_OFF ;


 int an30259a_brightness_set (TYPE_1__*,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static void an30259a_init_default_state(struct an30259a_led *led)
{
 struct an30259a *chip = led->chip;
 int led_on, err;

 switch (led->default_state) {
 case 128:
  led->cdev.brightness = LED_FULL;
  break;
 case 129:
  err = regmap_read(chip->regmap, AN30259A_REG_LED_ON, &led_on);
  if (err)
   break;

  if (!(led_on & AN30259A_LED_EN(led->num))) {
   led->cdev.brightness = LED_OFF;
   break;
  }
  regmap_read(chip->regmap, AN30259A_REG_LEDCC(led->num),
       &led->cdev.brightness);
  break;
 default:
  led->cdev.brightness = LED_OFF;
 }

 an30259a_brightness_set(&led->cdev, led->cdev.brightness);
}
