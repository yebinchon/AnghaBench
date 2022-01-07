
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_driver {int id_table; } ;
struct i2c_client {int dummy; } ;
struct device_driver {int of_match_table; } ;
struct device {int dummy; } ;


 scalar_t__ acpi_driver_match_device (struct device*,struct device_driver*) ;
 scalar_t__ i2c_match_id (int ,struct i2c_client*) ;
 scalar_t__ i2c_of_match_device (int ,struct i2c_client*) ;
 struct i2c_client* i2c_verify_client (struct device*) ;
 struct i2c_driver* to_i2c_driver (struct device_driver*) ;

__attribute__((used)) static int i2c_device_match(struct device *dev, struct device_driver *drv)
{
 struct i2c_client *client = i2c_verify_client(dev);
 struct i2c_driver *driver;



 if (i2c_of_match_device(drv->of_match_table, client))
  return 1;


 if (acpi_driver_match_device(dev, drv))
  return 1;

 driver = to_i2c_driver(drv);


 if (i2c_match_id(driver->id_table, client))
  return 1;

 return 0;
}
