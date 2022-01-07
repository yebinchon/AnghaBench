
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int x_pos; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 int AT91_SAMA5D2_PRESSR ;
 int AT91_SAMA5D2_XYZ_MASK ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;

__attribute__((used)) static u16 at91_adc_touch_pressure(struct at91_adc_state *st)
{
 u32 val;
 u32 z1, z2;
 u32 pres;
 u32 rxp = 1;
 u32 factor = 1000;


 val = at91_adc_readl(st, AT91_SAMA5D2_PRESSR);
 z1 = val & AT91_SAMA5D2_XYZ_MASK;
 z2 = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;

 if (z1 != 0)
  pres = rxp * (st->touch_st.x_pos * factor / 1024) *
   (z2 * factor / z1 - factor) /
   factor;
 else
  pres = 0xFFFF;






 return 0xFFFF - pres;
}
