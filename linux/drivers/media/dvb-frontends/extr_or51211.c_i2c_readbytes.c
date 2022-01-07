
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct or51211_state {int i2c; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static int i2c_readbytes(struct or51211_state *state, u8 reg, u8 *buf, int len)
{
 int err;
 struct i2c_msg msg;
 msg.addr = reg;
 msg.flags = I2C_M_RD;
 msg.len = len;
 msg.buf = buf;

 if ((err = i2c_transfer (state->i2c, &msg, 1)) != 1) {
  pr_warn("error (addr %02x, err == %i)\n", reg, err);
  return -EREMOTEIO;
 }

 return 0;
}
