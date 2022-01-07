
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lg216x_state {int i2c_adap; TYPE_1__* cfg; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_addr; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int lg_err (char*,int,int,int,int) ;
 int lg_reg (char*,int,int) ;

__attribute__((used)) static int lg216x_write_reg(struct lg216x_state *state, u16 reg, u8 val)
{
 int ret;
 u8 buf[] = { reg >> 8, reg & 0xff, val };
 struct i2c_msg msg = {
  .addr = state->cfg->i2c_addr, .flags = 0,
  .buf = buf, .len = 3,
 };

 lg_reg("reg: 0x%04x, val: 0x%02x\n", reg, val);

 ret = i2c_transfer(state->i2c_adap, &msg, 1);

 if (ret != 1) {
  lg_err("error (addr %02x %02x <- %02x, err = %i)\n",
         msg.buf[0], msg.buf[1], msg.buf[2], ret);
  if (ret < 0)
   return ret;
  else
   return -EREMOTEIO;
 }
 return 0;
}
