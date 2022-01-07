
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int disable_sample_and_hold; int enable_current_mirror; } ;
struct dib7000p_state {scalar_t__ version; TYPE_1__ cfg; } ;
typedef enum dibx000_adc_states { ____Placeholder_dibx000_adc_states } dibx000_adc_states ;
 scalar_t__ SOC7090 ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void dib7000p_set_adc_state(struct dib7000p_state *state, enum dibx000_adc_states no)
{
 u16 reg_908 = 0, reg_909 = 0;
 u16 reg;

 if (state->version != SOC7090) {
  reg_908 = dib7000p_read_word(state, 908);
  reg_909 = dib7000p_read_word(state, 909);
 }

 switch (no) {
 case 130:
  if (state->version == SOC7090) {
   reg = dib7000p_read_word(state, 1925);

   dib7000p_write_word(state, 1925, reg | (1 << 4) | (1 << 2));

   reg = dib7000p_read_word(state, 1925);
   msleep(200);
   dib7000p_write_word(state, 1925, reg & ~(1 << 4));

   reg = dib7000p_read_word(state, 72) & ~((0x3 << 14) | (0x3 << 12));
   dib7000p_write_word(state, 72, reg | (1 << 14) | (3 << 12) | 524);
  } else {
   reg_909 |= (1 << 1) | (1 << 0);
   dib7000p_write_word(state, 909, reg_909);
   reg_909 &= ~(1 << 1);
  }
  break;

 case 131:
  if (state->version == SOC7090) {
   reg = dib7000p_read_word(state, 1925);
   dib7000p_write_word(state, 1925, (reg & ~(1 << 2)) | (1 << 4));
  } else
   reg_909 |= (1 << 1) | (1 << 0);
  break;

 case 132:
  reg_908 &= 0x0fff;
  reg_909 &= 0x0003;
  break;

 case 133:
  reg_908 |= (1 << 14) | (1 << 13) | (1 << 12);
  reg_909 |= (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2);
  break;

 case 128:
  reg_908 &= ~(1 << 15);
  break;

 case 129:
  reg_908 |= (1 << 15);
  break;

 default:
  break;
 }



 reg_909 |= (state->cfg.disable_sample_and_hold & 1) << 4;
 reg_908 |= (state->cfg.enable_current_mirror & 1) << 7;

 if (state->version != SOC7090) {
  dib7000p_write_word(state, 908, reg_908);
  dib7000p_write_word(state, 909, reg_909);
 }
}
