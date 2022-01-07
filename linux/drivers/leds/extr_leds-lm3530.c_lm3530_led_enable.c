
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct lm3530_data {int enable; TYPE_1__ led_dev; int regulator; } ;


 int dev_err (int ,char*,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int lm3530_led_enable(struct lm3530_data *drvdata)
{
 int ret;

 if (drvdata->enable)
  return 0;

 ret = regulator_enable(drvdata->regulator);
 if (ret) {
  dev_err(drvdata->led_dev.dev, "Failed to enable vin:%d\n", ret);
  return ret;
 }

 drvdata->enable = 1;
 return 0;
}
