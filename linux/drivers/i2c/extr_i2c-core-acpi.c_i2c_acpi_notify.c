
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct i2c_client {int dev; } ;
struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;




 int NOTIFY_OK ;
 int acpi_device_enumerated (struct acpi_device*) ;
 struct i2c_adapter* i2c_acpi_find_adapter_by_handle (int ) ;
 struct i2c_client* i2c_acpi_find_client_by_adev (struct acpi_device*) ;
 int i2c_acpi_get_info (struct acpi_device*,struct i2c_board_info*,int *,int *) ;
 int i2c_acpi_register_device (struct i2c_adapter*,struct acpi_device*,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int put_device (int *) ;

__attribute__((used)) static int i2c_acpi_notify(struct notifier_block *nb, unsigned long value,
      void *arg)
{
 struct acpi_device *adev = arg;
 struct i2c_board_info info;
 acpi_handle adapter_handle;
 struct i2c_adapter *adapter;
 struct i2c_client *client;

 switch (value) {
 case 129:
  if (i2c_acpi_get_info(adev, &info, ((void*)0), &adapter_handle))
   break;

  adapter = i2c_acpi_find_adapter_by_handle(adapter_handle);
  if (!adapter)
   break;

  i2c_acpi_register_device(adapter, adev, &info);
  break;
 case 128:
  if (!acpi_device_enumerated(adev))
   break;

  client = i2c_acpi_find_client_by_adev(adev);
  if (!client)
   break;

  i2c_unregister_device(client);
  put_device(&client->dev);
  break;
 }

 return NOTIFY_OK;
}
