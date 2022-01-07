
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pm8xxx_xoadc {int nchans; struct pm8xxx_chan_info* chans; } ;
struct pm8xxx_chan_info {TYPE_1__* hwchan; } ;
struct TYPE_2__ {scalar_t__ amux_channel; } ;



__attribute__((used)) static struct pm8xxx_chan_info *
pm8xxx_get_channel(struct pm8xxx_xoadc *adc, u8 chan)
{
 int i;

 for (i = 0; i < adc->nchans; i++) {
  struct pm8xxx_chan_info *ch = &adc->chans[i];
  if (ch->hwchan->amux_channel == chan)
   return ch;
 }
 return ((void*)0);
}
