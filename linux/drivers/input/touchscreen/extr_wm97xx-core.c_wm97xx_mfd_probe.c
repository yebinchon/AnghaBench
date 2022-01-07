
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx_platform_data {int batt_pdata; int ac97; } ;
struct wm97xx {int ac97; int * dev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int _wm97xx_probe (struct wm97xx*) ;
 struct wm97xx_platform_data* dev_get_platdata (int *) ;
 struct wm97xx* devm_kzalloc (int *,int,int ) ;
 int wm97xx_add_battery (struct wm97xx*,int ) ;
 int wm97xx_unregister_touch (struct wm97xx*) ;

__attribute__((used)) static int wm97xx_mfd_probe(struct platform_device *pdev)
{
 struct wm97xx *wm;
 struct wm97xx_platform_data *mfd_pdata = dev_get_platdata(&pdev->dev);
 int ret;

 wm = devm_kzalloc(&pdev->dev, sizeof(struct wm97xx), GFP_KERNEL);
 if (!wm)
  return -ENOMEM;

 wm->dev = &pdev->dev;
 wm->ac97 = mfd_pdata->ac97;

 ret = _wm97xx_probe(wm);
 if (ret)
  return ret;

 ret = wm97xx_add_battery(wm, mfd_pdata->batt_pdata);
 if (ret < 0)
  goto batt_err;

 return ret;

batt_err:
 wm97xx_unregister_touch(wm);
 return ret;
}
