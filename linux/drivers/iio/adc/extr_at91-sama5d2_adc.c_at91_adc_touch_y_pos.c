
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct at91_adc_state {int dummy; } ;


 int AT91_SAMA5D2_YPOSR ;
 int at91_adc_touch_pos (struct at91_adc_state*,int ) ;

__attribute__((used)) static u16 at91_adc_touch_y_pos(struct at91_adc_state *st)
{
 return at91_adc_touch_pos(st, AT91_SAMA5D2_YPOSR);
}
