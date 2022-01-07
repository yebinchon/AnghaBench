
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_3__ {int ignore_parent; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct acpi_device {int dev; TYPE_2__ power; } ;


 int acpi_device_set_enumerated (struct acpi_device*) ;
 int dev_err (int *,char*,int ) ;
 int dev_name (int *) ;
 int i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;

__attribute__((used)) static void i2c_acpi_register_device(struct i2c_adapter *adapter,
         struct acpi_device *adev,
         struct i2c_board_info *info)
{
 adev->power.flags.ignore_parent = 1;
 acpi_device_set_enumerated(adev);

 if (!i2c_new_device(adapter, info)) {
  adev->power.flags.ignore_parent = 0;
  dev_err(&adapter->dev,
   "failed to add I2C device %s from ACPI\n",
   dev_name(&adev->dev));
 }
}
