
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_board_info {int type; int fwnode; } ;
struct i2c_adapter {int dev; } ;
struct i2c_acpi_lookup {int index; scalar_t__ adapter_handle; struct i2c_board_info* info; } ;
struct TYPE_2__ {int present; } ;
struct acpi_device {int dev; TYPE_1__ status; } ;
typedef int lookup ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_HANDLE (int *) ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ acpi_bus_get_device (scalar_t__,struct acpi_device**) ;
 scalar_t__ acpi_bus_get_status (struct acpi_device*) ;
 scalar_t__ acpi_device_enumerated (struct acpi_device*) ;
 int acpi_fwnode_handle (struct acpi_device*) ;
 int acpi_set_modalias (struct acpi_device*,int ,int ,int) ;
 int dev_name (int *) ;
 int i2c_acpi_do_lookup (struct acpi_device*,struct i2c_acpi_lookup*) ;
 int memset (struct i2c_acpi_lookup*,int ,int) ;

__attribute__((used)) static int i2c_acpi_get_info(struct acpi_device *adev,
        struct i2c_board_info *info,
        struct i2c_adapter *adapter,
        acpi_handle *adapter_handle)
{
 struct i2c_acpi_lookup lookup;
 int ret;

 memset(&lookup, 0, sizeof(lookup));
 lookup.info = info;
 lookup.index = -1;

 if (acpi_device_enumerated(adev))
  return -EINVAL;

 ret = i2c_acpi_do_lookup(adev, &lookup);
 if (ret)
  return ret;

 if (adapter) {

  if (ACPI_HANDLE(&adapter->dev) != lookup.adapter_handle)
   return -ENODEV;
 } else {
  struct acpi_device *adapter_adev;


  if (acpi_bus_get_device(lookup.adapter_handle, &adapter_adev))
   return -ENODEV;
  if (acpi_bus_get_status(adapter_adev) ||
      !adapter_adev->status.present)
   return -ENODEV;
 }

 info->fwnode = acpi_fwnode_handle(adev);
 if (adapter_handle)
  *adapter_handle = lookup.adapter_handle;

 acpi_set_modalias(adev, dev_name(&adev->dev), info->type,
     sizeof(info->type));

 return 0;
}
