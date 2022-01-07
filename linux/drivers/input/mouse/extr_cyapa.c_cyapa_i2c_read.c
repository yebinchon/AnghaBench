
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct cyapa {struct i2c_client* client; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static ssize_t cyapa_i2c_read(struct cyapa *cyapa, u8 reg, size_t len,
     u8 *values)
{
 struct i2c_client *client = cyapa->client;
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1,
   .buf = &reg,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = len,
   .buf = values,
  },
 };
 int ret;

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));

 if (ret != ARRAY_SIZE(msgs))
  return ret < 0 ? ret : -EIO;

 return 0;
}
