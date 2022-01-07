
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_adc_state {int current_sample_rate; } ;



__attribute__((used)) static inline unsigned at91_adc_get_sample_freq(struct at91_adc_state *st)
{
 return st->current_sample_rate;
}
