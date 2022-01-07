
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; } ;
struct i2c_adapter {int dummy; } ;
struct i2c_acpi_lookup {int index; int adapter_handle; int device_handle; struct i2c_board_info* info; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int lookup ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 struct i2c_client* ERR_PTR (int) ;
 int LIST_HEAD (int ) ;
 int acpi_dev_free_resource_list (int *) ;
 int acpi_dev_get_resources (struct acpi_device*,int *,int ,struct i2c_acpi_lookup*) ;
 int acpi_device_handle (struct acpi_device*) ;
 int i2c_acpi_fill_info ;
 struct i2c_adapter* i2c_acpi_find_adapter_by_handle (int ) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int memset (struct i2c_acpi_lookup*,int ,int) ;
 int resource_list ;

struct i2c_client *i2c_acpi_new_device(struct device *dev, int index,
           struct i2c_board_info *info)
{
 struct i2c_acpi_lookup lookup;
 struct i2c_adapter *adapter;
 struct i2c_client *client;
 struct acpi_device *adev;
 LIST_HEAD(resource_list);
 int ret;

 adev = ACPI_COMPANION(dev);
 if (!adev)
  return ERR_PTR(-EINVAL);

 memset(&lookup, 0, sizeof(lookup));
 lookup.info = info;
 lookup.device_handle = acpi_device_handle(adev);
 lookup.index = index;

 ret = acpi_dev_get_resources(adev, &resource_list,
         i2c_acpi_fill_info, &lookup);
 if (ret < 0)
  return ERR_PTR(ret);

 acpi_dev_free_resource_list(&resource_list);

 if (!info->addr)
  return ERR_PTR(-EADDRNOTAVAIL);

 adapter = i2c_acpi_find_adapter_by_handle(lookup.adapter_handle);
 if (!adapter)
  return ERR_PTR(-EPROBE_DEFER);

 client = i2c_new_device(adapter, info);
 if (!client)
  return ERR_PTR(-ENODEV);

 return client;
}
