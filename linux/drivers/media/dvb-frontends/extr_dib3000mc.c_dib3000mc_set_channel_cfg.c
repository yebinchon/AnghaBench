
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; int modulation; int hierarchy; int code_rate_HP; int code_rate_LP; int bandwidth_hz; } ;
struct dib3000mc_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int impulse_noise_mode; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 scalar_t__ boost ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_set_adp_cfg (struct dib3000mc_state*,int) ;
 int dib3000mc_set_bandwidth (struct dib3000mc_state*,int ) ;
 int dib3000mc_set_impulse_noise (struct dib3000mc_state*,int ,int) ;
 int dib3000mc_set_timing (struct dib3000mc_state*,int,int ,int ) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void dib3000mc_set_channel_cfg(struct dib3000mc_state *state,
          struct dtv_frontend_properties *ch, u16 seq)
{
 u16 value;
 u32 bw = BANDWIDTH_TO_KHZ(ch->bandwidth_hz);

 dib3000mc_set_bandwidth(state, bw);
 dib3000mc_set_timing(state, ch->transmission_mode, bw, 0);


 dib3000mc_write_word(state, 100, (16 << 6) + 9);







 dib3000mc_write_word(state, 1027, 0x0800);
 dib3000mc_write_word(state, 1027, 0x0000);


 dib3000mc_write_word(state, 26, 0x6680);
 dib3000mc_write_word(state, 29, 0x1273);
 dib3000mc_write_word(state, 33, 5);
 dib3000mc_set_adp_cfg(state, 132);
 dib3000mc_write_word(state, 133, 15564);

 dib3000mc_write_word(state, 12 , 0x0);
 dib3000mc_write_word(state, 13 , 0x3e8);
 dib3000mc_write_word(state, 14 , 0x0);
 dib3000mc_write_word(state, 15 , 0x3f2);

 dib3000mc_write_word(state, 93,0);
 dib3000mc_write_word(state, 94,0);
 dib3000mc_write_word(state, 95,0);
 dib3000mc_write_word(state, 96,0);
 dib3000mc_write_word(state, 97,0);
 dib3000mc_write_word(state, 98,0);

 dib3000mc_set_impulse_noise(state, 0, ch->transmission_mode);

 value = 0;
 switch (ch->transmission_mode) {
  case 129: value |= (0 << 7); break;
  default:
  case 128: value |= (1 << 7); break;
 }
 switch (ch->guard_interval) {
  case 138: value |= (0 << 5); break;
  case 139: value |= (1 << 5); break;
  case 137: value |= (3 << 5); break;
  default:
  case 136: value |= (2 << 5); break;
 }
 switch (ch->modulation) {
  case 130: value |= (0 << 3); break;
  case 132: value |= (1 << 3); break;
  default:
  case 131: value |= (2 << 3); break;
 }
 switch (135) {
  case 134: value |= 2; break;
  case 133: value |= 4; break;
  default:
  case 135: value |= 1; break;
 }
 dib3000mc_write_word(state, 0, value);
 dib3000mc_write_word(state, 5, (1 << 8) | ((seq & 0xf) << 4));

 value = 0;
 if (ch->hierarchy == 1)
  value |= (1 << 4);
 if (1 == 1)
  value |= 1;
 switch ((ch->hierarchy == 0 || 1 == 1) ? ch->code_rate_HP : ch->code_rate_LP) {
  case 143: value |= (2 << 1); break;
  case 142: value |= (3 << 1); break;
  case 141: value |= (5 << 1); break;
  case 140: value |= (7 << 1); break;
  default:
  case 144: value |= (1 << 1); break;
 }
 dib3000mc_write_word(state, 181, value);


 switch (ch->transmission_mode) {
  case 128: value = 256; break;
  case 129:
  default: value = 64; break;
 }
 switch (ch->guard_interval) {
  case 139: value *= 2; break;
  case 136: value *= 4; break;
  case 137: value *= 8; break;
  default:
  case 138: value *= 1; break;
 }
 value <<= 4;
 value |= dib3000mc_read_word(state, 180) & 0x000f;
 dib3000mc_write_word(state, 180, value);


 value = dib3000mc_read_word(state, 0);
 dib3000mc_write_word(state, 0, value | (1 << 9));
 dib3000mc_write_word(state, 0, value);

 msleep(30);

 dib3000mc_set_impulse_noise(state, state->cfg->impulse_noise_mode, ch->transmission_mode);
}
