
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;
struct device {int dummy; } ;


 struct wm97xx* dev_get_drvdata (struct device*) ;
 int wm97xx_remove_battery (struct wm97xx*) ;
 int wm97xx_unregister_touch (struct wm97xx*) ;

__attribute__((used)) static int wm97xx_remove(struct device *dev)
{
 struct wm97xx *wm = dev_get_drvdata(dev);

 wm97xx_remove_battery(wm);
 wm97xx_unregister_touch(wm);

 return 0;
}
