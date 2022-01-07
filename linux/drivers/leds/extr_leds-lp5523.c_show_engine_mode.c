
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
typedef enum lp55xx_engine_mode { ____Placeholder_lp55xx_engine_mode } lp55xx_engine_mode ;
struct TYPE_2__ {int mode; } ;





 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int sprintf (char*,char*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t show_engine_mode(struct device *dev,
    struct device_attribute *attr,
    char *buf, int nr)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 enum lp55xx_engine_mode mode = chip->engines[nr - 1].mode;

 switch (mode) {
 case 128:
  return sprintf(buf, "run\n");
 case 129:
  return sprintf(buf, "load\n");
 case 130:
 default:
  return sprintf(buf, "disabled\n");
 }
}
