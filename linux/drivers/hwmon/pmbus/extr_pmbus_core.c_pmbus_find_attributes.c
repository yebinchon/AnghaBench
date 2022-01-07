
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int current_attributes ;
 int pmbus_add_fan_attributes (struct i2c_client*,struct pmbus_data*) ;
 int pmbus_add_samples_attributes (struct i2c_client*,struct pmbus_data*) ;
 int pmbus_add_sensor_attrs (struct i2c_client*,struct pmbus_data*,char*,int ,int ) ;
 int power_attributes ;
 int temp_attributes ;
 int voltage_attributes ;

__attribute__((used)) static int pmbus_find_attributes(struct i2c_client *client,
     struct pmbus_data *data)
{
 int ret;


 ret = pmbus_add_sensor_attrs(client, data, "in", voltage_attributes,
         ARRAY_SIZE(voltage_attributes));
 if (ret)
  return ret;


 ret = pmbus_add_sensor_attrs(client, data, "curr", current_attributes,
         ARRAY_SIZE(current_attributes));
 if (ret)
  return ret;


 ret = pmbus_add_sensor_attrs(client, data, "power", power_attributes,
         ARRAY_SIZE(power_attributes));
 if (ret)
  return ret;


 ret = pmbus_add_sensor_attrs(client, data, "temp", temp_attributes,
         ARRAY_SIZE(temp_attributes));
 if (ret)
  return ret;


 ret = pmbus_add_fan_attributes(client, data);
 if (ret)
  return ret;

 ret = pmbus_add_samples_attributes(client, data);
 return ret;
}
