
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct icn8318_touch_data {int dummy; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int I2C_M_RD ;
 int ICN8318_REG_TOUCHDATA ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int icn8318_read_touch_data(struct i2c_client *client,
       struct icn8318_touch_data *touch_data)
{
 u8 reg = ICN8318_REG_TOUCHDATA;
 struct i2c_msg msg[2] = {
  {
   .addr = client->addr,
   .len = 1,
   .buf = &reg
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = sizeof(struct icn8318_touch_data),
   .buf = (u8 *)touch_data
  }
 };

 return i2c_transfer(client->adapter, msg, 2);
}
