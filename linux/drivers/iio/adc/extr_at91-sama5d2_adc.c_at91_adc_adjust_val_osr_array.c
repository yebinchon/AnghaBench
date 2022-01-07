
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct at91_adc_state {int dummy; } ;


 int at91_adc_adjust_val_osr (struct at91_adc_state*,int*) ;

__attribute__((used)) static void at91_adc_adjust_val_osr_array(struct at91_adc_state *st, void *buf,
       int len)
{
 int i = 0, val;
 u16 *buf_u16 = (u16 *) buf;
 while (i < len / 2) {
  val = buf_u16[i];
  at91_adc_adjust_val_osr(st, &val);
  buf_u16[i] = val;
  i++;
 }
}
