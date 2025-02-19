
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int dummy; } ;
struct dib0070_state {int* i2c_write_buffer; int* i2c_read_buffer; int i2c_buffer_lock; TYPE_2__* msg; int i2c; TYPE_1__* cfg; } ;
struct TYPE_5__ {int* buf; int len; scalar_t__ flags; int addr; } ;
struct TYPE_4__ {int i2c_address; } ;


 scalar_t__ I2C_M_RD ;
 int dprintk (char*) ;
 int i2c_transfer (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;

__attribute__((used)) static u16 dib0070_read_reg(struct dib0070_state *state, u8 reg)
{
 u16 ret;

 if (mutex_lock_interruptible(&state->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return 0;
 }

 state->i2c_write_buffer[0] = reg;

 memset(state->msg, 0, 2 * sizeof(struct i2c_msg));
 state->msg[0].addr = state->cfg->i2c_address;
 state->msg[0].flags = 0;
 state->msg[0].buf = state->i2c_write_buffer;
 state->msg[0].len = 1;
 state->msg[1].addr = state->cfg->i2c_address;
 state->msg[1].flags = I2C_M_RD;
 state->msg[1].buf = state->i2c_read_buffer;
 state->msg[1].len = 2;

 if (i2c_transfer(state->i2c, state->msg, 2) != 2) {
  pr_warn("DiB0070 I2C read failed\n");
  ret = 0;
 } else
  ret = (state->i2c_read_buffer[0] << 8)
   | state->i2c_read_buffer[1];

 mutex_unlock(&state->i2c_buffer_lock);
 return ret;
}
