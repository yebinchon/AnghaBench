
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ltc_wait_ready (struct i2c_client*) ;
 int pmbus_write_byte (struct i2c_client*,int,int ) ;

__attribute__((used)) static int ltc_write_byte(struct i2c_client *client, int page, u8 byte)
{
 int ret;

 ret = ltc_wait_ready(client);
 if (ret < 0)
  return ret;

 return pmbus_write_byte(client, page, byte);
}
