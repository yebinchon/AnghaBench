
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct wm8350_led {int enabled; int isink; TYPE_1__ cdev; int dcdc; } ;


 int dev_err (int ,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int wm8350_led_enable(struct wm8350_led *led)
{
 int ret = 0;

 if (led->enabled)
  return ret;

 ret = regulator_enable(led->isink);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to enable ISINK: %d\n", ret);
  return ret;
 }

 ret = regulator_enable(led->dcdc);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to enable DCDC: %d\n", ret);
  regulator_disable(led->isink);
  return ret;
 }

 led->enabled = 1;

 return ret;
}
