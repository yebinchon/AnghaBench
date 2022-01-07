
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int engine_idx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t lp55xx_show_engine_select(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;

 return sprintf(buf, "%d\n", chip->engine_idx);
}
