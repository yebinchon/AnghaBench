
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stb6100_state {TYPE_1__* config; int i2c; } ;
struct i2c_msg {int* buf; int len; int flags; scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ tuner_address; } ;


 int EINVAL ;
 scalar_t__ FE_DEBUG ;
 int FE_ERROR ;
 int I2C_M_RD ;
 int STB6100_NUMREGS ;
 int dprintk (scalar_t__,scalar_t__,int,char*,int,...) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int * stb6100_regnames ;
 scalar_t__ unlikely (int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int stb6100_read_reg(struct stb6100_state *state, u8 reg)
{
 u8 regs[STB6100_NUMREGS];

 struct i2c_msg msg = {
  .addr = state->config->tuner_address + reg,
  .flags = I2C_M_RD,
  .buf = regs,
  .len = 1
 };

 i2c_transfer(state->i2c, &msg, 1);

 if (unlikely(reg >= STB6100_NUMREGS)) {
  dprintk(verbose, FE_ERROR, 1, "Invalid register offset 0x%x", reg);
  return -EINVAL;
 }
 if (unlikely(verbose > FE_DEBUG)) {
  dprintk(verbose, FE_DEBUG, 1, "    Read from 0x%02x", state->config->tuner_address);
  dprintk(verbose, FE_DEBUG, 1, "        %s: 0x%02x", stb6100_regnames[reg], regs[0]);
 }

 return (unsigned int)regs[0];
}
