
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gl5_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int
lgs8gl5_update_alt_reg(struct lgs8gl5_state *state, u8 reg, u8 data)
{
 int ret;
 u8 b0[] = {reg};
 u8 b1[] = {0};
 u8 b2[] = {reg, data};
 struct i2c_msg msg[3] = {
  {
   .addr = state->config->demod_address + 2,
   .flags = 0,
   .buf = b0,
   .len = 1
  },
  {
   .addr = state->config->demod_address + 2,
   .flags = I2C_M_RD,
   .buf = b1,
   .len = 1
  },
  {
   .addr = state->config->demod_address + 2,
   .flags = 0,
   .buf = b2,
   .len = 2
  },
 };

 ret = i2c_transfer(state->i2c, msg, 3);
 return (ret != 3) ? -1 : 0;
}
