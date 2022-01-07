
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct regulator_led {int enabled; TYPE_1__ cdev; int vcc; } ;


 int dev_err (int ,char*,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void regulator_led_enable(struct regulator_led *led)
{
 int ret;

 if (led->enabled)
  return;

 ret = regulator_enable(led->vcc);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to enable vcc: %d\n", ret);
  return;
 }

 led->enabled = 1;
}
