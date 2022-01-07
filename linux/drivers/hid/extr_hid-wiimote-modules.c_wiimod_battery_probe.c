
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; scalar_t__ use_for_apm; int type; int get_property; int num_properties; int properties; } ;
struct wiimote_data {TYPE_1__ battery_desc; TYPE_2__* hdev; int battery; } ;
struct wiimod_ops {int dummy; } ;
struct power_supply_config {struct wiimote_data* drv_data; } ;
struct TYPE_4__ {int dev; int uniq; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int ) ;
 int hid_err (TYPE_2__*,char*) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;
 int power_supply_powers (int ,int *) ;
 int power_supply_register (int *,TYPE_1__*,struct power_supply_config*) ;
 int wiimod_battery_get_property ;
 int wiimod_battery_props ;

__attribute__((used)) static int wiimod_battery_probe(const struct wiimod_ops *ops,
    struct wiimote_data *wdata)
{
 struct power_supply_config psy_cfg = { .drv_data = wdata, };
 int ret;

 wdata->battery_desc.properties = wiimod_battery_props;
 wdata->battery_desc.num_properties = ARRAY_SIZE(wiimod_battery_props);
 wdata->battery_desc.get_property = wiimod_battery_get_property;
 wdata->battery_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 wdata->battery_desc.use_for_apm = 0;
 wdata->battery_desc.name = kasprintf(GFP_KERNEL, "wiimote_battery_%s",
          wdata->hdev->uniq);
 if (!wdata->battery_desc.name)
  return -ENOMEM;

 wdata->battery = power_supply_register(&wdata->hdev->dev,
            &wdata->battery_desc,
            &psy_cfg);
 if (IS_ERR(wdata->battery)) {
  hid_err(wdata->hdev, "cannot register battery device\n");
  ret = PTR_ERR(wdata->battery);
  goto err_free;
 }

 power_supply_powers(wdata->battery, &wdata->hdev->dev);
 return 0;

err_free:
 kfree(wdata->battery_desc.name);
 wdata->battery_desc.name = ((void*)0);
 return ret;
}
