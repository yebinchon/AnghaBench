
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_led {int regA; int map; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int MAX77650_LED_BR_MASK ;
 int MAX77650_LED_DISABLE ;
 int MAX77650_LED_ENABLE ;
 int MAX77650_LED_EN_MASK ;
 struct max77650_led* max77650_to_led (struct led_classdev*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int max77650_led_brightness_set(struct led_classdev *cdev,
           enum led_brightness brightness)
{
 struct max77650_led *led = max77650_to_led(cdev);
 int val, mask;

 mask = MAX77650_LED_BR_MASK | MAX77650_LED_EN_MASK;

 if (brightness == LED_OFF)
  val = MAX77650_LED_DISABLE;
 else
  val = MAX77650_LED_ENABLE | brightness;

 return regmap_update_bits(led->map, led->regA, mask, val);
}
