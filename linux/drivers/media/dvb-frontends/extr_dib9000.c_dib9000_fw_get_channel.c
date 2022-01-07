
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_5__ {int mem_mbx_lock; } ;
struct TYPE_6__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; TYPE_3__** fe; scalar_t__ i2c_read_buffer; } ;
typedef int s8 ;
struct TYPE_8__ {void* code_rate_LP; void* code_rate_HP; int hierarchy; int modulation; int guard_interval; int transmission_mode; int inversion; } ;
struct TYPE_7__ {TYPE_4__ dtv_property_cache; } ;


 int EINTR ;
 int EIO ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 void* FEC_AUTO ;
 int FE_MM_R_CHANNEL_UNION ;
 int FE_SYNC_CHANNEL ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 int GUARD_INTERVAL_AUTO ;
 int HIERARCHY_1 ;
 int HIERARCHY_AUTO ;
 int HIERARCHY_NONE ;
 int INVERSION_AUTO ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int QAM_16 ;
 int QAM_64 ;
 int QAM_AUTO ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_4K ;
 int TRANSMISSION_MODE_8K ;
 int TRANSMISSION_MODE_AUTO ;
 scalar_t__ dib9000_fw_memmbx_sync (struct dib9000_state*,int ) ;
 int dib9000_risc_mem_read (struct dib9000_state*,int ,scalar_t__,int) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib9000_fw_get_channel(struct dvb_frontend *fe)
{
 struct dib9000_state *state = fe->demodulator_priv;
 struct dibDVBTChannel {
  s8 spectrum_inversion;

  s8 nfft;
  s8 guard;
  s8 constellation;

  s8 hrch;
  s8 alpha;
  s8 code_rate_hp;
  s8 code_rate_lp;
  s8 select_hp;

  s8 intlv_native;
 };
 struct dibDVBTChannel *ch;
 int ret = 0;

 if (mutex_lock_interruptible(&state->platform.risc.mem_mbx_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }
 if (dib9000_fw_memmbx_sync(state, FE_SYNC_CHANNEL) < 0) {
  ret = -EIO;
  goto error;
 }

 dib9000_risc_mem_read(state, FE_MM_R_CHANNEL_UNION,
   state->i2c_read_buffer, sizeof(struct dibDVBTChannel));
 ch = (struct dibDVBTChannel *)state->i2c_read_buffer;


 switch (ch->spectrum_inversion & 0x7) {
 case 1:
  state->fe[0]->dtv_property_cache.inversion = INVERSION_ON;
  break;
 case 0:
  state->fe[0]->dtv_property_cache.inversion = INVERSION_OFF;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.inversion = INVERSION_AUTO;
  break;
 }
 switch (ch->nfft) {
 case 0:
  state->fe[0]->dtv_property_cache.transmission_mode = TRANSMISSION_MODE_2K;
  break;
 case 2:
  state->fe[0]->dtv_property_cache.transmission_mode = TRANSMISSION_MODE_4K;
  break;
 case 1:
  state->fe[0]->dtv_property_cache.transmission_mode = TRANSMISSION_MODE_8K;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.transmission_mode = TRANSMISSION_MODE_AUTO;
  break;
 }
 switch (ch->guard) {
 case 0:
  state->fe[0]->dtv_property_cache.guard_interval = GUARD_INTERVAL_1_32;
  break;
 case 1:
  state->fe[0]->dtv_property_cache.guard_interval = GUARD_INTERVAL_1_16;
  break;
 case 2:
  state->fe[0]->dtv_property_cache.guard_interval = GUARD_INTERVAL_1_8;
  break;
 case 3:
  state->fe[0]->dtv_property_cache.guard_interval = GUARD_INTERVAL_1_4;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.guard_interval = GUARD_INTERVAL_AUTO;
  break;
 }
 switch (ch->constellation) {
 case 2:
  state->fe[0]->dtv_property_cache.modulation = QAM_64;
  break;
 case 1:
  state->fe[0]->dtv_property_cache.modulation = QAM_16;
  break;
 case 0:
  state->fe[0]->dtv_property_cache.modulation = QPSK;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.modulation = QAM_AUTO;
  break;
 }
 switch (ch->hrch) {
 case 0:
  state->fe[0]->dtv_property_cache.hierarchy = HIERARCHY_NONE;
  break;
 case 1:
  state->fe[0]->dtv_property_cache.hierarchy = HIERARCHY_1;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.hierarchy = HIERARCHY_AUTO;
  break;
 }
 switch (ch->code_rate_hp) {
 case 1:
  state->fe[0]->dtv_property_cache.code_rate_HP = FEC_1_2;
  break;
 case 2:
  state->fe[0]->dtv_property_cache.code_rate_HP = FEC_2_3;
  break;
 case 3:
  state->fe[0]->dtv_property_cache.code_rate_HP = FEC_3_4;
  break;
 case 5:
  state->fe[0]->dtv_property_cache.code_rate_HP = FEC_5_6;
  break;
 case 7:
  state->fe[0]->dtv_property_cache.code_rate_HP = FEC_7_8;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.code_rate_HP = FEC_AUTO;
  break;
 }
 switch (ch->code_rate_lp) {
 case 1:
  state->fe[0]->dtv_property_cache.code_rate_LP = FEC_1_2;
  break;
 case 2:
  state->fe[0]->dtv_property_cache.code_rate_LP = FEC_2_3;
  break;
 case 3:
  state->fe[0]->dtv_property_cache.code_rate_LP = FEC_3_4;
  break;
 case 5:
  state->fe[0]->dtv_property_cache.code_rate_LP = FEC_5_6;
  break;
 case 7:
  state->fe[0]->dtv_property_cache.code_rate_LP = FEC_7_8;
  break;
 default:
 case -1:
  state->fe[0]->dtv_property_cache.code_rate_LP = FEC_AUTO;
  break;
 }

error:
 mutex_unlock(&state->platform.risc.mem_mbx_lock);
 return ret;
}
