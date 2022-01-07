
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_led_platdata {int flags; int gpio; } ;
struct s3c24xx_gpio_led {struct s3c24xx_led_platdata* pdata; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int S3C24XX_LEDF_ACTLOW ;
 int S3C24XX_LEDF_TRISTATE ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_set_value (int ,int) ;
 struct s3c24xx_gpio_led* to_gpio (struct led_classdev*) ;

__attribute__((used)) static void s3c24xx_led_set(struct led_classdev *led_cdev,
       enum led_brightness value)
{
 struct s3c24xx_gpio_led *led = to_gpio(led_cdev);
 struct s3c24xx_led_platdata *pd = led->pdata;
 int state = (value ? 1 : 0) ^ (pd->flags & S3C24XX_LEDF_ACTLOW);




 gpio_set_value(pd->gpio, state);

 if (pd->flags & S3C24XX_LEDF_TRISTATE) {
  if (value)
   gpio_direction_output(pd->gpio, state);
  else
   gpio_direction_input(pd->gpio);
 }
}
