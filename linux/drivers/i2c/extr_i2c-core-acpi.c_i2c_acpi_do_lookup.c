
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct i2c_board_info {int addr; } ;
struct i2c_acpi_lookup {int device_handle; struct i2c_board_info* info; } ;
struct TYPE_2__ {int present; } ;
struct acpi_device {TYPE_1__ status; } ;


 int EINVAL ;
 int ENODEV ;
 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ acpi_bus_get_status (struct acpi_device*) ;
 int acpi_dev_free_resource_list (struct list_head*) ;
 int acpi_dev_get_resources (struct acpi_device*,struct list_head*,int ,struct i2c_acpi_lookup*) ;
 int acpi_device_handle (struct acpi_device*) ;
 scalar_t__ acpi_match_device_ids (struct acpi_device*,int ) ;
 int i2c_acpi_fill_info ;
 int i2c_acpi_ignored_device_ids ;
 int memset (struct i2c_board_info*,int ,int) ;

__attribute__((used)) static int i2c_acpi_do_lookup(struct acpi_device *adev,
         struct i2c_acpi_lookup *lookup)
{
 struct i2c_board_info *info = lookup->info;
 struct list_head resource_list;
 int ret;

 if (acpi_bus_get_status(adev) || !adev->status.present)
  return -EINVAL;

 if (acpi_match_device_ids(adev, i2c_acpi_ignored_device_ids) == 0)
  return -ENODEV;

 memset(info, 0, sizeof(*info));
 lookup->device_handle = acpi_device_handle(adev);


 INIT_LIST_HEAD(&resource_list);
 ret = acpi_dev_get_resources(adev, &resource_list,
         i2c_acpi_fill_info, lookup);
 acpi_dev_free_resource_list(&resource_list);

 if (ret < 0 || !info->addr)
  return -EINVAL;

 return 0;
}
