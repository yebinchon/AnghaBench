
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {int dummy; } ;
struct device {int dummy; } ;


 struct lp55xx_led* cdev_to_lp55xx_led (int ) ;
 int dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct lp55xx_led *dev_to_lp55xx_led(struct device *dev)
{
 return cdev_to_lp55xx_led(dev_get_drvdata(dev));
}
