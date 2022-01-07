
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i2c_board_info {int dummy; } ;
struct i2c_acpi_lookup {scalar_t__ min_speed; int index; struct i2c_board_info* info; int search_handle; } ;
struct device {int dummy; } ;
typedef int lookup ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int I2C_ACPI_MAX_SCAN_DEPTH ;
 scalar_t__ UINT_MAX ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,struct i2c_acpi_lookup*,int *) ;
 int dev_warn (struct device*,char*) ;
 int has_acpi_companion (struct device*) ;
 int i2c_acpi_lookup_speed ;
 int memset (struct i2c_acpi_lookup*,int ,int) ;

u32 i2c_acpi_find_bus_speed(struct device *dev)
{
 struct i2c_acpi_lookup lookup;
 struct i2c_board_info dummy;
 acpi_status status;

 if (!has_acpi_companion(dev))
  return 0;

 memset(&lookup, 0, sizeof(lookup));
 lookup.search_handle = ACPI_HANDLE(dev);
 lookup.min_speed = UINT_MAX;
 lookup.info = &dummy;
 lookup.index = -1;

 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
         I2C_ACPI_MAX_SCAN_DEPTH,
         i2c_acpi_lookup_speed, ((void*)0),
         &lookup, ((void*)0));

 if (ACPI_FAILURE(status)) {
  dev_warn(dev, "unable to find I2C bus speed from ACPI\n");
  return 0;
 }

 return lookup.min_speed != UINT_MAX ? lookup.min_speed : 0;
}
