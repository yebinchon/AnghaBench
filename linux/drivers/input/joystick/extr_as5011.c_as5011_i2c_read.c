
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_msg {int flags; int len; int* buf; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int I2C_M_REV_DIR_ADDR ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int as5011_i2c_read(struct i2c_client *client,
      uint8_t aregaddr, signed char *value)
{
 uint8_t data[2] = { aregaddr };
 struct i2c_msg msg_set[2] = {
  {
   .addr = client->addr,
   .flags = I2C_M_REV_DIR_ADDR,
   .len = 1,
   .buf = (uint8_t *)data
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD | I2C_M_NOSTART,
   .len = 1,
   .buf = (uint8_t *)data
  }
 };
 int error;

 error = i2c_transfer(client->adapter, msg_set, 2);
 if (error < 0)
  return error;

 *value = data[0] & 0x80 ? -1 * (1 + ~data[0]) : data[0];
 return 0;
}
