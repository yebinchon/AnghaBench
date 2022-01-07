
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; int modulation; int hierarchy; int code_rate_HP; int code_rate_LP; int bandwidth_hz; } ;
struct dib7000m_state {int reg_offs; int div_sync_wait; int revision; int div_force_off; int div_state; int demod; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 int DIB7000M_POWER_COR4_DINTLV_ICIRM_EQUAL_CFROD ;
 int dib7000m_set_bandwidth (struct dib7000m_state*,int ) ;
 int dib7000m_set_diversity_in (int *,int ) ;
 int dib7000m_set_power_mode (struct dib7000m_state*,int ) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;

__attribute__((used)) static void dib7000m_set_channel(struct dib7000m_state *state, struct dtv_frontend_properties *ch,
     u8 seq)
{
 u16 value, est[4];

 dib7000m_set_bandwidth(state, BANDWIDTH_TO_KHZ(ch->bandwidth_hz));


 value = 0;
 switch (ch->transmission_mode) {
  case 130: value |= (0 << 7); break;
  case 129: value |= (2 << 7); break;
  default:
  case 128: value |= (1 << 7); break;
 }
 switch (ch->guard_interval) {
  case 139: value |= (0 << 5); break;
  case 140: value |= (1 << 5); break;
  case 138: value |= (3 << 5); break;
  default:
  case 137: value |= (2 << 5); break;
 }
 switch (ch->modulation) {
  case 131: value |= (0 << 3); break;
  case 133: value |= (1 << 3); break;
  default:
  case 132: value |= (2 << 3); break;
 }
 switch (136) {
  case 135: value |= 2; break;
  case 134: value |= 4; break;
  default:
  case 136: value |= 1; break;
 }
 dib7000m_write_word(state, 0, value);
 dib7000m_write_word(state, 5, (seq << 4));


 value = 0;
 if (1 != 0)
  value |= (1 << 6);
 if (ch->hierarchy == 1)
  value |= (1 << 4);
 if (1 == 1)
  value |= 1;
 switch ((ch->hierarchy == 0 || 1 == 1) ? ch->code_rate_HP : ch->code_rate_LP) {
  case 144: value |= (2 << 1); break;
  case 143: value |= (3 << 1); break;
  case 142: value |= (5 << 1); break;
  case 141: value |= (7 << 1); break;
  default:
  case 145: value |= (1 << 1); break;
 }
 dib7000m_write_word(state, 267 + state->reg_offs, value);




 dib7000m_write_word(state, 26, (6 << 12) | (6 << 8) | 0x80);


 dib7000m_write_word(state, 29, (0 << 14) | (4 << 10) | (1 << 9) | (3 << 5) | (1 << 4) | (0x3));


 dib7000m_write_word(state, 32, (0 << 4) | 0x3);


 dib7000m_write_word(state, 33, (0 << 4) | 0x5);


 switch (ch->transmission_mode) {
  case 128: value = 256; break;
  case 129: value = 128; break;
  case 130:
  default: value = 64; break;
 }
 switch (ch->guard_interval) {
  case 140: value *= 2; break;
  case 137: value *= 4; break;
  case 138: value *= 8; break;
  default:
  case 139: value *= 1; break;
 }
 state->div_sync_wait = (value * 3) / 2 + 32;



 if (1 == 1 || state->revision > 0x4000)
  state->div_force_off = 0;
 else
  state->div_force_off = 1;
 dib7000m_set_diversity_in(&state->demod, state->div_state);


 switch (ch->modulation) {
  case 132:
   est[0] = 0x0148;
   est[1] = 0xfff0;
   est[2] = 0x00a4;
   est[3] = 0xfff8;
   break;
  case 133:
   est[0] = 0x023d;
   est[1] = 0xffdf;
   est[2] = 0x00a4;
   est[3] = 0xfff0;
   break;
  default:
   est[0] = 0x099a;
   est[1] = 0xffae;
   est[2] = 0x0333;
   est[3] = 0xfff8;
   break;
 }
 for (value = 0; value < 4; value++)
  dib7000m_write_word(state, 214 + value + state->reg_offs, est[value]);


 dib7000m_set_power_mode(state, DIB7000M_POWER_COR4_DINTLV_ICIRM_EQUAL_CFROD);
}
