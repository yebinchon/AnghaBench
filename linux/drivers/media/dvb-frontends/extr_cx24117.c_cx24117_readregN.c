
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct cx24117_state {int demod; TYPE_1__* priv; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* i2c; int demod_address; } ;


 int I2C_M_RD ;
 int KBUILD_MODNAME ;
 int dev_warn (int *,char*,int ,int ,int,int ) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;

__attribute__((used)) static int cx24117_readregN(struct cx24117_state *state,
 u8 reg, u8 *buf, int len)
{
 int ret;
 struct i2c_msg msg[] = {
  { .addr = state->priv->demod_address, .flags = 0,
   .buf = &reg, .len = 1 },
  { .addr = state->priv->demod_address, .flags = I2C_M_RD,
   .buf = buf, .len = len }
 };

 ret = i2c_transfer(state->priv->i2c, msg, 2);
 if (ret < 0) {
  dev_warn(&state->priv->i2c->dev,
   "%s: demod%d i2c rd err(%d) @0x%x\n",
   KBUILD_MODNAME, state->demod, ret, reg);
  return ret;
 }
 return 0;
}
