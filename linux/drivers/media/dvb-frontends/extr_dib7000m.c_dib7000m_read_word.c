
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct i2c_msg {int dummy; } ;
struct dib7000m_state {int* i2c_write_buffer; int i2c_addr; int* i2c_read_buffer; int i2c_buffer_lock; TYPE_1__* msg; int i2c_adap; } ;
struct TYPE_3__ {int addr; int* buf; int len; scalar_t__ flags; } ;


 scalar_t__ I2C_M_RD ;
 int dprintk (char*,...) ;
 int i2c_transfer (int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u16 dib7000m_read_word(struct dib7000m_state *state, u16 reg)
{
 u16 ret;

 if (mutex_lock_interruptible(&state->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return 0;
 }

 state->i2c_write_buffer[0] = (reg >> 8) | 0x80;
 state->i2c_write_buffer[1] = reg & 0xff;

 memset(state->msg, 0, 2 * sizeof(struct i2c_msg));
 state->msg[0].addr = state->i2c_addr >> 1;
 state->msg[0].flags = 0;
 state->msg[0].buf = state->i2c_write_buffer;
 state->msg[0].len = 2;
 state->msg[1].addr = state->i2c_addr >> 1;
 state->msg[1].flags = I2C_M_RD;
 state->msg[1].buf = state->i2c_read_buffer;
 state->msg[1].len = 2;

 if (i2c_transfer(state->i2c_adap, state->msg, 2) != 2)
  dprintk("i2c read error on %d\n", reg);

 ret = (state->i2c_read_buffer[0] << 8) | state->i2c_read_buffer[1];
 mutex_unlock(&state->i2c_buffer_lock);

 return ret;
}
