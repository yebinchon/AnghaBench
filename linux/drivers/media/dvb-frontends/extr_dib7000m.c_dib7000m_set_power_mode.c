
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int mobile_mode; } ;
struct dib7000m_state {int revision; TYPE_1__ cfg; } ;
typedef enum dib7000m_power_mode { ____Placeholder_dib7000m_power_mode } dib7000m_power_mode ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;

__attribute__((used)) static void dib7000m_set_power_mode(struct dib7000m_state *state, enum dib7000m_power_mode mode)
{

 u16 reg_903 = 0xffff, reg_904 = 0xffff, reg_905 = 0xffff, reg_906 = 0x3fff;
 u8 offset = 0;


 switch (mode) {

  case 133:
   reg_903 = 0x0000; reg_904 = 0x0000; reg_905 = 0x0000; reg_906 = 0x0000;
   break;


  case 130:
   reg_905 &= ~((1 << 7) | (1 << 6) | (1 << 5) | (1 << 2));
   break;

  case 129:
   reg_903 &= ~((1 << 15) | (1 << 14) | (1 << 11) | (1 << 10));
   reg_905 &= ~((1 << 7) | (1 << 6) | (1 << 5) | (1 << 4) | (1 << 2));
   reg_906 &= ~((1 << 0));
   break;

  case 131:
   reg_903 = 0x0000; reg_904 = 0x801f; reg_905 = 0x0000; reg_906 = 0x0000;
   break;

  case 132:
   reg_903 = 0x0000; reg_904 = 0x8000; reg_905 = 0x010b; reg_906 = 0x0000;
   break;
  case 128:
   break;
 }


 if (!state->cfg.mobile_mode)
  reg_904 |= (1 << 7) | (1 << 6) | (1 << 4) | (1 << 2) | (1 << 1);


 if (state->revision != 0x4000)
  reg_906 <<= 1;

 if (state->revision == 0x4003)
  offset = 1;

 dib7000m_write_word(state, 903 + offset, reg_903);
 dib7000m_write_word(state, 904 + offset, reg_904);
 dib7000m_write_word(state, 905 + offset, reg_905);
 dib7000m_write_word(state, 906 + offset, reg_906);
}
