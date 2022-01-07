
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct cx24120_state {TYPE_2__* i2c; TYPE_1__* config; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int i2c_addr; } ;


 int I2C_M_RD ;
 int dev_dbg (int *,char*,int,int) ;
 int err (char*,int,int) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;

__attribute__((used)) static int cx24120_readreg(struct cx24120_state *state, u8 reg)
{
 int ret;
 u8 buf = 0;
 struct i2c_msg msg[] = {
  {
   .addr = state->config->i2c_addr,
   .flags = 0,
   .len = 1,
   .buf = &reg
  }, {
   .addr = state->config->i2c_addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = &buf
  }
 };

 ret = i2c_transfer(state->i2c, msg, 2);
 if (ret != 2) {
  err("Read error: reg=0x%02x, ret=%i)\n", reg, ret);
  return ret;
 }

 dev_dbg(&state->i2c->dev, "reg=0x%02x; data=0x%02x\n", reg, buf);

 return buf;
}
