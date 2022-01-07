
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct pmbus_data {struct pmbus_driver_info const* info; } ;
struct i2c_client {int dummy; } ;


 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;

const struct pmbus_driver_info *pmbus_get_driver_info(struct i2c_client *client)
{
 struct pmbus_data *data = i2c_get_clientdata(client);

 return data->info;
}
