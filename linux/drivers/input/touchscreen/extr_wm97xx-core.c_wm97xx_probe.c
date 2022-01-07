
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx_pdata {int * batt_pdata; } ;
struct wm97xx {int ac97; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int _wm97xx_probe (struct wm97xx*) ;
 struct wm97xx_pdata* dev_get_platdata (struct device*) ;
 struct wm97xx* devm_kzalloc (struct device*,int,int ) ;
 int to_ac97_t (struct device*) ;
 int wm97xx_add_battery (struct wm97xx*,int *) ;
 int wm97xx_unregister_touch (struct wm97xx*) ;

__attribute__((used)) static int wm97xx_probe(struct device *dev)
{
 struct wm97xx *wm;
 int ret;
 struct wm97xx_pdata *pdata = dev_get_platdata(dev);

 wm = devm_kzalloc(dev, sizeof(struct wm97xx), GFP_KERNEL);
 if (!wm)
  return -ENOMEM;

 wm->dev = dev;
 wm->ac97 = to_ac97_t(dev);

 ret = _wm97xx_probe(wm);
 if (ret)
  return ret;

 ret = wm97xx_add_battery(wm, pdata ? pdata->batt_pdata : ((void*)0));
 if (ret < 0)
  goto batt_err;

 return ret;

batt_err:
 wm97xx_unregister_touch(wm);
 return ret;
}
