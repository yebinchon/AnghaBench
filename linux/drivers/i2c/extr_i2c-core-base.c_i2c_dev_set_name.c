
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct i2c_board_info {scalar_t__ dev_name; } ;
struct i2c_adapter {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int acpi_dev_name (struct acpi_device*) ;
 int dev_set_name (int *,char*,int ,...) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_encode_flags_to_addr (struct i2c_client*) ;

__attribute__((used)) static void i2c_dev_set_name(struct i2c_adapter *adap,
        struct i2c_client *client,
        struct i2c_board_info const *info)
{
 struct acpi_device *adev = ACPI_COMPANION(&client->dev);

 if (info && info->dev_name) {
  dev_set_name(&client->dev, "i2c-%s", info->dev_name);
  return;
 }

 if (adev) {
  dev_set_name(&client->dev, "i2c-%s", acpi_dev_name(adev));
  return;
 }

 dev_set_name(&client->dev, "%d-%04x", i2c_adapter_id(adap),
       i2c_encode_flags_to_addr(client));
}
