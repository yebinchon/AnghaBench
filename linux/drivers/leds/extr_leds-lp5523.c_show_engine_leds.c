
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {TYPE_1__* engines; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int led_mux; } ;


 int LP5523_MAX_LEDS ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp5523_mux_to_array (int ,char*) ;
 int sprintf (char*,char*,char*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t show_engine_leds(struct device *dev,
       struct device_attribute *attr,
       char *buf, int nr)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 char mux[LP5523_MAX_LEDS + 1];

 lp5523_mux_to_array(chip->engines[nr - 1].led_mux, mux);

 return sprintf(buf, "%s\n", mux);
}
