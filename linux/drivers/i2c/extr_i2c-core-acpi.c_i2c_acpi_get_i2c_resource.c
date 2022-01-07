
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_resource_i2c_serialbus {scalar_t__ type; } ;
struct TYPE_2__ {struct acpi_resource_i2c_serialbus i2c_serial_bus; } ;
struct acpi_resource {scalar_t__ type; TYPE_1__ data; } ;


 scalar_t__ ACPI_RESOURCE_SERIAL_TYPE_I2C ;
 scalar_t__ ACPI_RESOURCE_TYPE_SERIAL_BUS ;

bool i2c_acpi_get_i2c_resource(struct acpi_resource *ares,
          struct acpi_resource_i2c_serialbus **i2c)
{
 struct acpi_resource_i2c_serialbus *sb;

 if (ares->type != ACPI_RESOURCE_TYPE_SERIAL_BUS)
  return 0;

 sb = &ares->data.i2c_serial_bus;
 if (sb->type != ACPI_RESOURCE_SERIAL_TYPE_I2C)
  return 0;

 *i2c = sb;
 return 1;
}
