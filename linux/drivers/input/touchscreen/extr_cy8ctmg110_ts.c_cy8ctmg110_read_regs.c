
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct cy8ctmg110 {struct i2c_client* client; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int cy8ctmg110_read_regs(struct cy8ctmg110 *tsc,
  unsigned char *data, unsigned char len, unsigned char cmd)
{
 struct i2c_client *client = tsc->client;
 int ret;
 struct i2c_msg msg[2] = {

  {
   .addr = client->addr,
   .len = 1,
   .buf = &cmd
  },

  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = len,
   .buf = data
  }
 };

 ret = i2c_transfer(client->adapter, msg, 2);
 if (ret < 0)
  return ret;

 return 0;
}
