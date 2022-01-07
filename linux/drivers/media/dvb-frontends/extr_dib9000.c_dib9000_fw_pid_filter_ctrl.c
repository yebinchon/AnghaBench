
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int pid_ctrl_index; int demod_lock; TYPE_1__* pid_ctrl; } ;
struct TYPE_2__ {int onoff; int cmd; } ;


 int DIB9000_PID_FILTER_CTRL ;
 int EINTR ;
 int dib9000_read_word (struct dib9000_state*,int) ;
 int dib9000_write_word (struct dib9000_state*,int,int) ;
 int dprintk (char*,...) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int dib9000_fw_pid_filter_ctrl(struct dvb_frontend *fe, u8 onoff)
{
 struct dib9000_state *state = fe->demodulator_priv;
 u16 val;
 int ret;

 if ((state->pid_ctrl_index != -2) && (state->pid_ctrl_index < 9)) {

  dprintk("pid filter cmd postpone\n");
  state->pid_ctrl_index++;
  state->pid_ctrl[state->pid_ctrl_index].cmd = DIB9000_PID_FILTER_CTRL;
  state->pid_ctrl[state->pid_ctrl_index].onoff = onoff;
  return 0;
 }

 if (mutex_lock_interruptible(&state->demod_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }

 val = dib9000_read_word(state, 294 + 1) & 0xffef;
 val |= (onoff & 0x1) << 4;

 dprintk("PID filter enabled %d\n", onoff);
 ret = dib9000_write_word(state, 294 + 1, val);
 mutex_unlock(&state->demod_lock);
 return ret;

}
