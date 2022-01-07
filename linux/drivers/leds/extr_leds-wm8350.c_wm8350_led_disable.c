
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct wm8350_led {scalar_t__ enabled; TYPE_1__ cdev; int dcdc; int isink; } ;


 int dev_err (int ,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int wm8350_led_disable(struct wm8350_led *led)
{
 int ret = 0;

 if (!led->enabled)
  return ret;

 ret = regulator_disable(led->dcdc);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to disable DCDC: %d\n", ret);
  return ret;
 }

 ret = regulator_disable(led->isink);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to disable ISINK: %d\n", ret);
  ret = regulator_enable(led->dcdc);
  if (ret != 0)
   dev_err(led->cdev.dev, "Failed to reenable DCDC: %d\n",
    ret);
  return ret;
 }

 led->enabled = 0;

 return ret;
}
