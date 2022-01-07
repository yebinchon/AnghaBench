
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int I2C_M_IGNORE_NAK ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int as5011_i2c_write(struct i2c_client *client,
       uint8_t aregaddr,
       uint8_t avalue)
{
 uint8_t data[2] = { aregaddr, avalue };
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = I2C_M_IGNORE_NAK,
  .len = 2,
  .buf = (uint8_t *)data
 };
 int error;

 error = i2c_transfer(client->adapter, &msg, 1);
 return error < 0 ? error : 0;
}
