
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;
struct dib3000_state {int i2c; TYPE_1__ config; } ;


 int I2C_M_RD ;
 int deb_i2c (char*,...) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int dib3000_read_reg(struct dib3000_state *state, u16 reg)
{
 u8 wb[] = { ((reg >> 8) | 0x80) & 0xff, reg & 0xff };
 u8 rb[2];
 struct i2c_msg msg[] = {
  { .addr = state->config.demod_address, .flags = 0, .buf = wb, .len = 2 },
  { .addr = state->config.demod_address, .flags = I2C_M_RD, .buf = rb, .len = 2 },
 };

 if (i2c_transfer(state->i2c, msg, 2) != 2)
  deb_i2c("i2c read error\n");

 deb_i2c("reading i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\n",reg,reg,
   (rb[0] << 8) | rb[1],(rb[0] << 8) | rb[1]);

 return (rb[0] << 8) | rb[1];
}
