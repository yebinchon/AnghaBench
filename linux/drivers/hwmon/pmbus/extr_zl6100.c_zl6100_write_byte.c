
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zl6100_data {int access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENXIO ;
 int ktime_get () ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_write_byte (struct i2c_client*,int,int ) ;
 struct zl6100_data* to_zl6100_data (struct pmbus_driver_info const*) ;
 int zl6100_wait (struct zl6100_data*) ;

__attribute__((used)) static int zl6100_write_byte(struct i2c_client *client, int page, u8 value)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct zl6100_data *data = to_zl6100_data(info);
 int ret;

 if (page > 0)
  return -ENXIO;

 zl6100_wait(data);
 ret = pmbus_write_byte(client, page, value);
 data->access = ktime_get();

 return ret;
}
