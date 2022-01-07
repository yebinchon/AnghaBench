
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int revision; } ;
typedef enum dibx000_adc_states { ____Placeholder_dibx000_adc_states } dibx000_adc_states ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib8000_set_adc_state(struct dib8000_state *state, enum dibx000_adc_states no)
{
 int ret = 0;
 u16 reg, reg_907 = dib8000_read_word(state, 907);
 u16 reg_908 = dib8000_read_word(state, 908);

 switch (no) {
 case 130:
  if (state->revision != 0x8090) {
   reg_908 |= (1 << 1) | (1 << 0);
   ret |= dib8000_write_word(state, 908, reg_908);
   reg_908 &= ~(1 << 1);
  } else {
   reg = dib8000_read_word(state, 1925);

   dib8000_write_word(state, 1925, reg |
     (1<<4) | (1<<2));


   reg = dib8000_read_word(state, 1925);
   msleep(20);

   dib8000_write_word(state, 1925, reg & ~(1<<4));

   reg = dib8000_read_word(state, 921) & ~((0x3 << 14)
     | (0x3 << 12));


   dib8000_write_word(state, 921, reg | (1 << 14)
     | (3 << 12));
  }
  break;

 case 131:
  if (state->revision == 0x8090) {
   reg = dib8000_read_word(state, 1925);

   dib8000_write_word(state, 1925,
     (reg & ~(1<<2)) | (1<<4));
  }
  reg_908 |= (1 << 1) | (1 << 0);
  break;

 case 132:
  reg_907 &= 0x0fff;
  reg_908 &= 0x0003;
  break;

 case 133:
  reg_907 = (1 << 13) | (1 << 12);
  reg_908 = (1 << 6) | (1 << 5) | (1 << 4) | (1 << 3) | (1 << 1);
  break;

 case 128:
  reg_907 &= ~(1 << 15);
  break;

 case 129:
  reg_907 |= (1 << 15);
  break;

 default:
  break;
 }

 ret |= dib8000_write_word(state, 907, reg_907);
 ret |= dib8000_write_word(state, 908, reg_908);

 return ret;
}
