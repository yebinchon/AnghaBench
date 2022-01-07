
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int x_pos; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 int AT91_SAMA5D2_XPOSR ;
 int at91_adc_touch_pos (struct at91_adc_state*,int ) ;

__attribute__((used)) static u16 at91_adc_touch_x_pos(struct at91_adc_state *st)
{
 st->touch_st.x_pos = at91_adc_touch_pos(st, AT91_SAMA5D2_XPOSR);
 return st->touch_st.x_pos;
}
