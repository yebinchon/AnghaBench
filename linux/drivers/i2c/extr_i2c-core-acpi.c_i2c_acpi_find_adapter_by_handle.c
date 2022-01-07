
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
typedef int acpi_handle ;


 struct device* bus_find_device (int *,int *,int ,int ) ;
 int i2c_acpi_find_match_adapter ;
 int i2c_bus_type ;
 struct i2c_adapter* i2c_verify_adapter (struct device*) ;

struct i2c_adapter *i2c_acpi_find_adapter_by_handle(acpi_handle handle)
{
 struct device *dev;

 dev = bus_find_device(&i2c_bus_type, ((void*)0), handle,
         i2c_acpi_find_match_adapter);

 return dev ? i2c_verify_adapter(dev) : ((void*)0);
}
