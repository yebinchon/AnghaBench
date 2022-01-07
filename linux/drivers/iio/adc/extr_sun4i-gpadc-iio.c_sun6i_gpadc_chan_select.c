
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SUN6I_GPADC_CTRL1_ADC_CHAN_SELECT (unsigned int) ;

__attribute__((used)) static unsigned int sun6i_gpadc_chan_select(unsigned int chan)
{
 return SUN6I_GPADC_CTRL1_ADC_CHAN_SELECT(chan);
}
