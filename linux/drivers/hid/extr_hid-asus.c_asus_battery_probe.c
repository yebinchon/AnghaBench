
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply_config {struct asus_drvdata* drv_data; } ;
struct hid_device {int dev; int uniq; } ;
struct TYPE_2__ {int name; scalar_t__ use_for_apm; int type; int get_property; int num_properties; int properties; } ;
struct asus_drvdata {int battery_in_query; int * battery; TYPE_1__ battery_desc; int battery_next_query; int battery_stat; scalar_t__ battery_capacity; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int *) ;
 int asus_battery_get_property ;
 int asus_battery_props ;
 int dev_name (int *) ;
 int devm_kasprintf (int *,int ,char*,int ) ;
 int * devm_power_supply_register (int *,TYPE_1__*,struct power_supply_config*) ;
 int hid_err (struct hid_device*,char*) ;
 struct asus_drvdata* hid_get_drvdata (struct hid_device*) ;
 int jiffies ;
 int power_supply_powers (int *,int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int asus_battery_probe(struct hid_device *hdev)
{
 struct asus_drvdata *drvdata = hid_get_drvdata(hdev);
 struct power_supply_config pscfg = { .drv_data = drvdata };
 int ret = 0;

 drvdata->battery_capacity = 0;
 drvdata->battery_stat = POWER_SUPPLY_STATUS_UNKNOWN;
 drvdata->battery_in_query = 0;

 drvdata->battery_desc.properties = asus_battery_props;
 drvdata->battery_desc.num_properties = ARRAY_SIZE(asus_battery_props);
 drvdata->battery_desc.get_property = asus_battery_get_property;
 drvdata->battery_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 drvdata->battery_desc.use_for_apm = 0;
 drvdata->battery_desc.name = devm_kasprintf(&hdev->dev, GFP_KERNEL,
     "asus-keyboard-%s-battery",
     strlen(hdev->uniq) ?
     hdev->uniq : dev_name(&hdev->dev));
 if (!drvdata->battery_desc.name)
  return -ENOMEM;

 drvdata->battery_next_query = jiffies;

 drvdata->battery = devm_power_supply_register(&hdev->dev,
    &(drvdata->battery_desc), &pscfg);
 if (IS_ERR(drvdata->battery)) {
  ret = PTR_ERR(drvdata->battery);
  drvdata->battery = ((void*)0);
  hid_err(hdev, "Unable to register battery device\n");
  return ret;
 }

 power_supply_powers(drvdata->battery, &hdev->dev);

 return ret;
}
