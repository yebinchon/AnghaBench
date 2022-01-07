
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {TYPE_2__** fe; } ;
typedef int s8 ;
struct TYPE_3__ {int inversion; int transmission_mode; int guard_interval; int modulation; int hierarchy; int code_rate_HP; int code_rate_LP; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;
 int FE_MM_W_CHANNEL_UNION ;
 int dib9000_risc_mem_write (struct dib9000_state*,int ,int *) ;

__attribute__((used)) static int dib9000_fw_set_channel_union(struct dvb_frontend *fe)
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
 struct dibDVBTChannel ch;

 switch (state->fe[0]->dtv_property_cache.inversion) {
 case 136:
  ch.spectrum_inversion = 1;
  break;
 case 137:
  ch.spectrum_inversion = 0;
  break;
 default:
 case 138:
  ch.spectrum_inversion = -1;
  break;
 }
 switch (state->fe[0]->dtv_property_cache.transmission_mode) {
 case 131:
  ch.nfft = 0;
  break;
 case 130:
  ch.nfft = 2;
  break;
 case 129:
  ch.nfft = 1;
  break;
 default:
 case 128:
  ch.nfft = 1;
  break;
 }
 switch (state->fe[0]->dtv_property_cache.guard_interval) {
 case 147:
  ch.guard = 0;
  break;
 case 148:
  ch.guard = 1;
  break;
 case 145:
  ch.guard = 2;
  break;
 case 146:
  ch.guard = 3;
  break;
 default:
 case 144:
  ch.guard = -1;
  break;
 }
 switch (state->fe[0]->dtv_property_cache.modulation) {
 case 134:
  ch.constellation = 2;
  break;
 case 135:
  ch.constellation = 1;
  break;
 case 132:
  ch.constellation = 0;
  break;
 default:
 case 133:
  ch.constellation = -1;
  break;
 }
 switch (state->fe[0]->dtv_property_cache.hierarchy) {
 case 139:
  ch.hrch = 0;
  break;
 case 143:
 case 142:
 case 141:
  ch.hrch = 1;
  break;
 default:
 case 140:
  ch.hrch = -1;
  break;
 }
 ch.alpha = 1;
 switch (state->fe[0]->dtv_property_cache.code_rate_HP) {
 case 154:
  ch.code_rate_hp = 1;
  break;
 case 153:
  ch.code_rate_hp = 2;
  break;
 case 152:
  ch.code_rate_hp = 3;
  break;
 case 151:
  ch.code_rate_hp = 5;
  break;
 case 150:
  ch.code_rate_hp = 7;
  break;
 default:
 case 149:
  ch.code_rate_hp = -1;
  break;
 }
 switch (state->fe[0]->dtv_property_cache.code_rate_LP) {
 case 154:
  ch.code_rate_lp = 1;
  break;
 case 153:
  ch.code_rate_lp = 2;
  break;
 case 152:
  ch.code_rate_lp = 3;
  break;
 case 151:
  ch.code_rate_lp = 5;
  break;
 case 150:
  ch.code_rate_lp = 7;
  break;
 default:
 case 149:
  ch.code_rate_lp = -1;
  break;
 }
 ch.select_hp = 1;
 ch.intlv_native = 1;

 dib9000_risc_mem_write(state, FE_MM_W_CHANNEL_UNION, (u8 *) &ch);

 return 0;
}
