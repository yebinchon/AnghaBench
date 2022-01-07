
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 struct i2c_adapter* i2c_verify_adapter (struct device*) ;

__attribute__((used)) static int i2c_acpi_find_match_adapter(struct device *dev, const void *data)
{
 struct i2c_adapter *adapter = i2c_verify_adapter(dev);

 if (!adapter)
  return 0;

 return ACPI_HANDLE(dev) == (acpi_handle)data;
}
