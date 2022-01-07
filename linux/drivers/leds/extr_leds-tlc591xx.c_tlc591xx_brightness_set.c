
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlc591xx_priv {int dummy; } ;
struct tlc591xx_led {struct tlc591xx_priv* priv; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LEDOUT_DIM ;
 int LEDOUT_OFF ;
 int LEDOUT_ON ;

 struct tlc591xx_led* ldev_to_led (struct led_classdev*) ;
 int tlc591xx_set_ledout (struct tlc591xx_priv*,struct tlc591xx_led*,int ) ;
 int tlc591xx_set_pwm (struct tlc591xx_priv*,struct tlc591xx_led*,int) ;

__attribute__((used)) static int
tlc591xx_brightness_set(struct led_classdev *led_cdev,
   enum led_brightness brightness)
{
 struct tlc591xx_led *led = ldev_to_led(led_cdev);
 struct tlc591xx_priv *priv = led->priv;
 int err;

 switch (brightness) {
 case 0:
  err = tlc591xx_set_ledout(priv, led, LEDOUT_OFF);
  break;
 case 128:
  err = tlc591xx_set_ledout(priv, led, LEDOUT_ON);
  break;
 default:
  err = tlc591xx_set_ledout(priv, led, LEDOUT_DIM);
  if (!err)
   err = tlc591xx_set_pwm(priv, led, brightness);
 }

 return err;
}
