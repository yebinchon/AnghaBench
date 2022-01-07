
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct i2c_msg {scalar_t__ len; scalar_t__* buf; int flags; int addr; } ;
struct cx24120_state {TYPE_2__* i2c; TYPE_1__* config; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ i2c_wr_max; int i2c_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,scalar_t__,scalar_t__,scalar_t__*) ;
 int err (char*,int,scalar_t__) ;
 int i2c_transfer (TYPE_2__*,struct i2c_msg*,int) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (scalar_t__,int ) ;
 int memcpy (scalar_t__*,scalar_t__ const*,scalar_t__) ;

__attribute__((used)) static int cx24120_writeregs(struct cx24120_state *state,
        u8 reg, const u8 *values, u16 len, u8 incr)
{
 int ret;
 u16 max = state->config->i2c_wr_max > 0 ?
    state->config->i2c_wr_max :
    len;

 struct i2c_msg msg = {
  .addr = state->config->i2c_addr,
  .flags = 0,
 };

 msg.buf = kmalloc(max + 1, GFP_KERNEL);
 if (!msg.buf)
  return -ENOMEM;

 while (len) {
  msg.buf[0] = reg;
  msg.len = len > max ? max : len;
  memcpy(&msg.buf[1], values, msg.len);

  len -= msg.len;
  values += msg.len;

  if (incr)
   reg += msg.len;
  msg.len++;

  ret = i2c_transfer(state->i2c, &msg, 1);
  if (ret != 1) {
   err("i2c_write error(err == %i, 0x%02x)\n", ret, reg);
   goto out;
  }

  dev_dbg(&state->i2c->dev, "reg=0x%02x; data=%*ph\n",
   reg, msg.len - 1, msg.buf + 1);
 }

 ret = 0;

out:
 kfree(msg.buf);
 return ret;
}
