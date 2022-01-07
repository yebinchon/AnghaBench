
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib7000m_state {int revision; } ;
typedef enum dibx000_adc_states { ____Placeholder_dibx000_adc_states } dibx000_adc_states ;
 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;

__attribute__((used)) static int dib7000m_set_adc_state(struct dib7000m_state *state, enum dibx000_adc_states no)
{
 int ret = 0;
 u16 reg_913 = dib7000m_read_word(state, 913),
        reg_914 = dib7000m_read_word(state, 914);

 switch (no) {
  case 130:
   reg_914 |= (1 << 1) | (1 << 0);
   ret |= dib7000m_write_word(state, 914, reg_914);
   reg_914 &= ~(1 << 1);
   break;

  case 131:
   reg_914 |= (1 << 1) | (1 << 0);
   break;

  case 132:
   if (state->revision == 0x4000) {

    dib7000m_write_word(state, 913, 0);
    dib7000m_write_word(state, 914, reg_914 & 0x3);

    dib7000m_write_word(state, 913, (1 << 15));
    dib7000m_write_word(state, 914, reg_914 & 0x3);
   }

   reg_913 &= 0x0fff;
   reg_914 &= 0x0003;
   break;

  case 133:
   reg_913 |= (1 << 14) | (1 << 13) | (1 << 12);
   reg_914 |= (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2);
   break;

  case 128:
   reg_913 &= ~(1 << 15);
   break;

  case 129:
   reg_913 |= (1 << 15);
   break;

  default:
   break;
 }


 ret |= dib7000m_write_word(state, 913, reg_913);
 ret |= dib7000m_write_word(state, 914, reg_914);

 return ret;
}
