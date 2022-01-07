
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct cx24120_state {TYPE_2__* i2c; TYPE_1__* config; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int i2c_addr; } ;


 int dev_dbg (int *,char*,int ,int ) ;
 int err (char*,int,int ,int ) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;

__attribute__((used)) static int cx24120_writereg(struct cx24120_state *state, u8 reg, u8 data)
{
 u8 buf[] = { reg, data };
 struct i2c_msg msg = {
  .addr = state->config->i2c_addr,
  .flags = 0,
  .buf = buf,
  .len = 2
 };
 int ret;

 ret = i2c_transfer(state->i2c, &msg, 1);
 if (ret != 1) {
  err("Write error: i2c_write error(err == %i, 0x%02x: 0x%02x)\n",
      ret, reg, data);
  return ret;
 }

 dev_dbg(&state->i2c->dev, "reg=0x%02x; data=0x%02x\n", reg, data);

 return 0;
}
