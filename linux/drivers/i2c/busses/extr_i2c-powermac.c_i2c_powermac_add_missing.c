
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_READ ;
 int ONYX_REG_CONTROL ;
 int i2c_powermac_create_one (struct i2c_adapter*,char*,int) ;
 int i2c_smbus_xfer (struct i2c_adapter*,int,int ,int ,int ,int ,union i2c_smbus_data*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* pmac_i2c_get_bus_node (struct pmac_i2c_bus*) ;

__attribute__((used)) static void i2c_powermac_add_missing(struct i2c_adapter *adap,
            struct pmac_i2c_bus *bus,
            bool found_onyx)
{
 struct device_node *busnode = pmac_i2c_get_bus_node(bus);
 int rc;



 if (of_device_is_compatible(busnode, "k2-i2c") && !found_onyx) {
  union i2c_smbus_data data;

  rc = i2c_smbus_xfer(adap, 0x46, 0, I2C_SMBUS_READ,
        67, I2C_SMBUS_BYTE_DATA,
        &data);
  if (rc >= 0)
   i2c_powermac_create_one(adap, "MAC,pcm3052", 0x46);

  rc = i2c_smbus_xfer(adap, 0x47, 0, I2C_SMBUS_READ,
        67, I2C_SMBUS_BYTE_DATA,
        &data);
  if (rc >= 0)
   i2c_powermac_create_one(adap, "MAC,pcm3052", 0x47);
 }
}
