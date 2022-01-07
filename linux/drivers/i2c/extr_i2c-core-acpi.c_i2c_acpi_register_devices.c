
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int I2C_ACPI_MAX_SCAN_DEPTH ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,struct i2c_adapter*,int *) ;
 int dev_warn (int *,char*) ;
 int has_acpi_companion (int *) ;
 int i2c_acpi_add_device ;

void i2c_acpi_register_devices(struct i2c_adapter *adap)
{
 acpi_status status;

 if (!has_acpi_companion(&adap->dev))
  return;

 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
         I2C_ACPI_MAX_SCAN_DEPTH,
         i2c_acpi_add_device, ((void*)0),
         adap, ((void*)0));
 if (ACPI_FAILURE(status))
  dev_warn(&adap->dev, "failed to enumerate I2C slaves\n");
}
