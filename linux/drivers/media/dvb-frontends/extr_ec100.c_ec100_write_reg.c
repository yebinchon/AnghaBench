
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_3__ {int demod_address; } ;
struct ec100_state {TYPE_2__* i2c; TYPE_1__ config; } ;
typedef int buf ;
struct TYPE_4__ {int dev; } ;


 int EREMOTEIO ;
 int KBUILD_MODNAME ;
 int dev_warn (int *,char*,int ,int,int ) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;

__attribute__((used)) static int ec100_write_reg(struct ec100_state *state, u8 reg, u8 val)
{
 int ret;
 u8 buf[2] = {reg, val};
 struct i2c_msg msg[1] = {
  {
   .addr = state->config.demod_address,
   .flags = 0,
   .len = sizeof(buf),
   .buf = buf,
  }
 };

 ret = i2c_transfer(state->i2c, msg, 1);
 if (ret == 1) {
  ret = 0;
 } else {
  dev_warn(&state->i2c->dev, "%s: i2c wr failed=%d reg=%02x\n",
    KBUILD_MODNAME, ret, reg);
  ret = -EREMOTEIO;
 }

 return ret;
}
