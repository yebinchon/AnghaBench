
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct lm3530_data {int enable; TYPE_1__ led_dev; int regulator; } ;


 int dev_err (int ,char*,int) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void lm3530_led_disable(struct lm3530_data *drvdata)
{
 int ret;

 if (!drvdata->enable)
  return;

 ret = regulator_disable(drvdata->regulator);
 if (ret) {
  dev_err(drvdata->led_dev.dev, "Failed to disable vin:%d\n",
   ret);
  return;
 }

 drvdata->enable = 0;
}
