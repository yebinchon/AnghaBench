
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {int dummy; } ;




 int* adp_Q16 ;
 int* adp_Q64 ;
 int* adp_Qdefault ;
 int dib8000_write_word (struct dib8000_state*,int,int const) ;

__attribute__((used)) static u16 dib8000_adp_fine_tune(struct dib8000_state *state, u16 max_constellation)
{
 u16 i, ana_gain = 0;
 const u16 *adp;


 switch (max_constellation) {
 case 128:
   ana_gain = 0x7;
   adp = &adp_Q64[0];
   break;
 case 129:
   ana_gain = 0x7;
   adp = &adp_Q16[0];
   break;
 default:
   ana_gain = 0;
   adp = &adp_Qdefault[0];
   break;
 }

 for (i = 0; i < 4; i++)
  dib8000_write_word(state, 215 + i, adp[i]);

 return ana_gain;
}
