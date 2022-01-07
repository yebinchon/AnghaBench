
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; scalar_t__ use_for_apm; int type; int get_property; int num_properties; int properties; } ;
struct sony_sc {int battery_capacity; int battery; TYPE_1__ battery_desc; int device_id; int mac_address; struct hid_device* hdev; } ;
struct power_supply_config {struct sony_sc* drv_data; } ;
struct hid_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int ) ;
 int devm_kasprintf (int *,int ,char const*,int ,int ) ;
 int devm_power_supply_register (int *,TYPE_1__*,struct power_supply_config*) ;
 int hid_err (struct hid_device*,char*) ;
 int power_supply_powers (int ,int *) ;
 int sony_battery_get_property ;
 int sony_battery_props ;

__attribute__((used)) static int sony_battery_probe(struct sony_sc *sc, int append_dev_id)
{
 const char *battery_str_fmt = append_dev_id ?
  "sony_controller_battery_%pMR_%i" :
  "sony_controller_battery_%pMR";
 struct power_supply_config psy_cfg = { .drv_data = sc, };
 struct hid_device *hdev = sc->hdev;
 int ret;





 sc->battery_capacity = 100;

 sc->battery_desc.properties = sony_battery_props;
 sc->battery_desc.num_properties = ARRAY_SIZE(sony_battery_props);
 sc->battery_desc.get_property = sony_battery_get_property;
 sc->battery_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 sc->battery_desc.use_for_apm = 0;
 sc->battery_desc.name = devm_kasprintf(&hdev->dev, GFP_KERNEL,
       battery_str_fmt, sc->mac_address, sc->device_id);
 if (!sc->battery_desc.name)
  return -ENOMEM;

 sc->battery = devm_power_supply_register(&hdev->dev, &sc->battery_desc,
         &psy_cfg);
 if (IS_ERR(sc->battery)) {
  ret = PTR_ERR(sc->battery);
  hid_err(hdev, "Unable to register battery device\n");
  return ret;
 }

 power_supply_powers(sc->battery, &hdev->dev);
 return 0;
}
