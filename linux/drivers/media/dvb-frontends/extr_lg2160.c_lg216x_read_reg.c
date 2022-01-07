
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lg216x_state {TYPE_1__* cfg; int i2c_adap; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_addr; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int lg_err (char*,int ,int,int) ;
 int lg_reg (char*,int) ;

__attribute__((used)) static int lg216x_read_reg(struct lg216x_state *state, u16 reg, u8 *val)
{
 int ret;
 u8 reg_buf[] = { reg >> 8, reg & 0xff };
 struct i2c_msg msg[] = {
  { .addr = state->cfg->i2c_addr,
    .flags = 0, .buf = reg_buf, .len = 2 },
  { .addr = state->cfg->i2c_addr,
    .flags = I2C_M_RD, .buf = val, .len = 1 },
 };

 lg_reg("reg: 0x%04x\n", reg);

 ret = i2c_transfer(state->i2c_adap, msg, 2);

 if (ret != 2) {
  lg_err("error (addr %02x reg %04x error (ret == %i)\n",
         state->cfg->i2c_addr, reg, ret);
  if (ret < 0)
   return ret;
  else
   return -EREMOTEIO;
 }
 return 0;
}
