
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_3__ {int mem_mbx_lock; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {int demod_lock; TYPE_2__ platform; scalar_t__ i2c_read_buffer; } ;


 int EINTR ;
 int EIO ;
 int FE_MM_R_FE_MONITOR ;
 int FE_SYNC_CHANNEL ;
 scalar_t__ dib9000_fw_memmbx_sync (struct dib9000_state*,int ) ;
 int dib9000_risc_mem_read (struct dib9000_state*,int ,int *,int) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib9000_read_unc_blocks(struct dvb_frontend *fe, u32 * unc)
{
 struct dib9000_state *state = fe->demodulator_priv;
 u16 *c = (u16 *)state->i2c_read_buffer;
 int ret = 0;

 if (mutex_lock_interruptible(&state->demod_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }
 if (mutex_lock_interruptible(&state->platform.risc.mem_mbx_lock) < 0) {
  dprintk("could not get the lock\n");
  ret = -EINTR;
  goto error;
 }
 if (dib9000_fw_memmbx_sync(state, FE_SYNC_CHANNEL) < 0) {
  mutex_unlock(&state->platform.risc.mem_mbx_lock);
  ret = -EIO;
  goto error;
 }
 dib9000_risc_mem_read(state, FE_MM_R_FE_MONITOR, (u8 *) c, 16 * 2);
 mutex_unlock(&state->platform.risc.mem_mbx_lock);

 *unc = c[12];

error:
 mutex_unlock(&state->demod_lock);
 return ret;
}
