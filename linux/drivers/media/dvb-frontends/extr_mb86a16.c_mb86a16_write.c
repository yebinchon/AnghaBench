
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
 int MB86A16_DEBUG ;
 int dprintk (int ,int ,int,char*,int ,int ,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int verbose ;

__attribute__((used)) static int mb86a16_write(struct mb86a16_state *state, u8 reg, u8 val)
{
 int ret;
 u8 buf[] = { reg, val };

 struct i2c_msg msg = {
  .addr = state->config->demod_address,
  .flags = 0,
  .buf = buf,
  .len = 2
 };

 dprintk(verbose, MB86A16_DEBUG, 1,
  "writing to [0x%02x],Reg[0x%02x],Data[0x%02x]",
  state->config->demod_address, buf[0], buf[1]);

 ret = i2c_transfer(state->i2c_adap, &msg, 1);

 return (ret != 1) ? -EREMOTEIO : 0;
}
