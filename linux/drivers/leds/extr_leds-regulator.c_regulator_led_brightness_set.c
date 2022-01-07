
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_brightness; int dev; } ;
struct regulator_led {int mutex; TYPE_1__ cdev; int vcc; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,int,int) ;
 int led_regulator_get_voltage (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_led_disable (struct regulator_led*) ;
 int regulator_led_enable (struct regulator_led*) ;
 int regulator_set_voltage (int ,int,int) ;
 struct regulator_led* to_regulator_led (struct led_classdev*) ;

__attribute__((used)) static int regulator_led_brightness_set(struct led_classdev *led_cdev,
      enum led_brightness value)
{
 struct regulator_led *led = to_regulator_led(led_cdev);
 int voltage;
 int ret = 0;

 mutex_lock(&led->mutex);

 if (value == LED_OFF) {
  regulator_led_disable(led);
  goto out;
 }

 if (led->cdev.max_brightness > 1) {
  voltage = led_regulator_get_voltage(led->vcc, value);
  dev_dbg(led->cdev.dev, "brightness: %d voltage: %d\n",
    value, voltage);

  ret = regulator_set_voltage(led->vcc, voltage, voltage);
  if (ret != 0)
   dev_err(led->cdev.dev, "Failed to set voltage %d: %d\n",
    voltage, ret);
 }

 regulator_led_enable(led);

out:
 mutex_unlock(&led->mutex);
 return ret;
}
