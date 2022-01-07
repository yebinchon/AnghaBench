
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct i2c_msg {int dummy; } ;
struct dib0090_state {int* i2c_write_buffer; int i2c_buffer_lock; TYPE_2__* msg; int i2c; TYPE_1__* config; } ;
struct TYPE_5__ {int* buf; int len; scalar_t__ flags; int addr; } ;
struct TYPE_4__ {int i2c_address; } ;


 int EINVAL ;
 int EREMOTEIO ;
 int dprintk (char*) ;
 int i2c_transfer (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;

__attribute__((used)) static int dib0090_write_reg(struct dib0090_state *state, u32 reg, u16 val)
{
 int ret;

 if (mutex_lock_interruptible(&state->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return -EINVAL;
 }

 state->i2c_write_buffer[0] = reg & 0xff;
 state->i2c_write_buffer[1] = val >> 8;
 state->i2c_write_buffer[2] = val & 0xff;

 memset(state->msg, 0, sizeof(struct i2c_msg));
 state->msg[0].addr = state->config->i2c_address;
 state->msg[0].flags = 0;
 state->msg[0].buf = state->i2c_write_buffer;
 state->msg[0].len = 3;

 if (i2c_transfer(state->i2c, state->msg, 1) != 1) {
  pr_warn("DiB0090 I2C write failed\n");
  ret = -EREMOTEIO;
 } else
  ret = 0;

 mutex_unlock(&state->i2c_buffer_lock);
 return ret;
}
