
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mb86a16_state {int i2c_adap; TYPE_1__* config; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*,int ,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int verbose ;

__attribute__((used)) static int mb86a16_read(struct mb86a16_state *state, u8 reg, u8 *val)
{
 int ret;
 u8 b0[] = { reg };
 u8 b1[] = { 0 };

 struct i2c_msg msg[] = {
  {
   .addr = state->config->demod_address,
   .flags = 0,
   .buf = b0,
   .len = 1
  }, {
   .addr = state->config->demod_address,
   .flags = I2C_M_RD,
   .buf = b1,
   .len = 1
  }
 };
 ret = i2c_transfer(state->i2c_adap, msg, 2);
 if (ret != 2) {
  dprintk(verbose, MB86A16_ERROR, 1, "read error(reg=0x%02x, ret=%i)",
   reg, ret);

  if (ret < 0)
   return ret;
  return -EREMOTEIO;
 }
 *val = b1[0];

 return ret;
}
