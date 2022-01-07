
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct itd1000_state {int i2c; int * shadow; TYPE_1__* cfg; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_address; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int itd1000_write_regs (struct itd1000_state*,int,int *,int) ;
 int itd_warn (char*) ;

__attribute__((used)) static int itd1000_read_reg(struct itd1000_state *state, u8 reg)
{
 u8 val;
 struct i2c_msg msg[2] = {
  { .addr = state->cfg->i2c_address, .flags = 0, .buf = &reg, .len = 1 },
  { .addr = state->cfg->i2c_address, .flags = I2C_M_RD, .buf = &val, .len = 1 },
 };


 itd1000_write_regs(state, (reg - 1) & 0xff, &state->shadow[(reg - 1) & 0xff], 1);

 if (i2c_transfer(state->i2c, msg, 2) != 2) {
  itd_warn("itd1000 I2C read failed\n");
  return -EREMOTEIO;
 }
 return val;
}
