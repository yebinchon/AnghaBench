
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef enum pmbus_fan_mode { ____Placeholder_pmbus_fan_mode } pmbus_fan_mode ;


 int pmbus_get_fan_rate (struct i2c_client*,int,int,int,int) ;

int pmbus_get_fan_rate_device(struct i2c_client *client, int page, int id,
         enum pmbus_fan_mode mode)
{
 return pmbus_get_fan_rate(client, page, id, mode, 0);
}
