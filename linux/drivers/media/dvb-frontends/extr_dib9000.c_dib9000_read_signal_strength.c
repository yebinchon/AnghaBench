
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_6__ {int mem_mbx_lock; } ;
struct TYPE_7__ {TYPE_2__ risc; } ;
struct dib9000_state {int demod_lock; TYPE_3__ platform; TYPE_4__** fe; scalar_t__ i2c_read_buffer; } ;
struct TYPE_5__ {int (* read_signal_strength ) (TYPE_4__*,int*) ;} ;
struct TYPE_8__ {TYPE_1__ ops; } ;


 int EINTR ;
 int EIO ;
 int FE_MM_R_FE_MONITOR ;
 int FE_SYNC_CHANNEL ;
 size_t MAX_NUMBER_OF_FRONTENDS ;
 scalar_t__ dib9000_fw_memmbx_sync (struct dib9000_state*,int ) ;
 int dib9000_risc_mem_read (struct dib9000_state*,int ,size_t*,int) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*,int*) ;

__attribute__((used)) static int dib9000_read_signal_strength(struct dvb_frontend *fe, u16 * strength)
{
 struct dib9000_state *state = fe->demodulator_priv;
 u8 index_frontend;
 u16 *c = (u16 *)state->i2c_read_buffer;
 u16 val;
 int ret = 0;

 if (mutex_lock_interruptible(&state->demod_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }
 *strength = 0;
 for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != ((void*)0)); index_frontend++) {
  state->fe[index_frontend]->ops.read_signal_strength(state->fe[index_frontend], &val);
  if (val > 65535 - *strength)
   *strength = 65535;
  else
   *strength += val;
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

 val = 65535 - c[4];
 if (val > 65535 - *strength)
  *strength = 65535;
 else
  *strength += val;

error:
 mutex_unlock(&state->demod_lock);
 return ret;
}
