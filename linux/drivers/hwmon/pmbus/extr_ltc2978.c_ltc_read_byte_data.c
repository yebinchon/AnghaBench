
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ltc_wait_ready (struct i2c_client*) ;
 int pmbus_read_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int ltc_read_byte_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 ret = ltc_wait_ready(client);
 if (ret < 0)
  return ret;

 return pmbus_read_byte_data(client, page, reg);
}
