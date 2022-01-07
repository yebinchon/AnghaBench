
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gl5_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int
lgs8gl5_read_reg(struct lgs8gl5_state *state, u8 reg)
{
 int ret;
 u8 b0[] = {reg};
 u8 b1[] = {0};
 struct i2c_msg msg[2] = {
  {
   .addr = state->config->demod_address,
   .flags = 0,
   .buf = b0,
   .len = 1
  },
  {
   .addr = state->config->demod_address,
   .flags = I2C_M_RD,
   .buf = b1,
   .len = 1
  }
 };

 ret = i2c_transfer(state->i2c, msg, 2);
 if (ret != 2)
  return -EIO;

 return b1[0];
}
