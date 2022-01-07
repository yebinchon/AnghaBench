
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_platform_data {int flags; } ;
struct pmbus_driver_info {int identify; int pages; } ;
struct pmbus_device_info {int flags; int pages; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {struct pmbus_platform_data* platform_data; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMBUS_SKIP_STATUS_CHECK ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,struct pmbus_driver_info*) ;
 int pmbus_identify ;

__attribute__((used)) static int pmbus_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct pmbus_driver_info *info;
 struct pmbus_platform_data *pdata = ((void*)0);
 struct device *dev = &client->dev;
 struct pmbus_device_info *device_info;

 info = devm_kzalloc(dev, sizeof(struct pmbus_driver_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 device_info = (struct pmbus_device_info *)id->driver_data;
 if (device_info->flags & PMBUS_SKIP_STATUS_CHECK) {
  pdata = devm_kzalloc(dev, sizeof(struct pmbus_platform_data),
         GFP_KERNEL);
  if (!pdata)
   return -ENOMEM;

  pdata->flags = PMBUS_SKIP_STATUS_CHECK;
 }

 info->pages = device_info->pages;
 info->identify = pmbus_identify;
 dev->platform_data = pdata;

 return pmbus_do_probe(client, id, info);
}
