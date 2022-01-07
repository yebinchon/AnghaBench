
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wm97xx_batt_pdata {int dummy; } ;
struct wm97xx {TYPE_2__* battery_dev; int dev; } ;
struct TYPE_6__ {struct wm97xx_batt_pdata* platform_data; int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int ENOMEM ;
 int platform_device_add (TYPE_2__*) ;
 TYPE_2__* platform_device_alloc (char*,int) ;
 int platform_device_put (TYPE_2__*) ;
 int platform_set_drvdata (TYPE_2__*,struct wm97xx*) ;

__attribute__((used)) static int wm97xx_add_battery(struct wm97xx *wm,
         struct wm97xx_batt_pdata *pdata)
{
 int ret;

 wm->battery_dev = platform_device_alloc("wm97xx-battery", -1);
 if (!wm->battery_dev)
  return -ENOMEM;

 platform_set_drvdata(wm->battery_dev, wm);
 wm->battery_dev->dev.parent = wm->dev;
 wm->battery_dev->dev.platform_data = pdata;
 ret = platform_device_add(wm->battery_dev);
 if (ret)
  platform_device_put(wm->battery_dev);

 return ret;
}
