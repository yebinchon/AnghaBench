
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;


 int* adc_target_16dB ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_update_ana_gain(struct dib8000_state *state, u16 ana_gain)
{
 u16 i;

 dib8000_write_word(state, 116, ana_gain);


 if (ana_gain) {
  for (i = 0; i < 10; i++)
   dib8000_write_word(state, 80 + i, adc_target_16dB[i]);
 } else {
  for (i = 0; i < 10; i++)
   dib8000_write_word(state, 80 + i, adc_target_16dB[i] - 355);
 }
}
