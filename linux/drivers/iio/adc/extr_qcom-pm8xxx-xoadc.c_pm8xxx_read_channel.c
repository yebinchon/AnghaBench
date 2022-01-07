
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pm8xxx_xoadc {int dummy; } ;
struct pm8xxx_chan_info {int dummy; } ;


 int pm8xxx_read_channel_rsv (struct pm8xxx_xoadc*,struct pm8xxx_chan_info const*,int,int *,int) ;

__attribute__((used)) static int pm8xxx_read_channel(struct pm8xxx_xoadc *adc,
          const struct pm8xxx_chan_info *ch,
          u16 *adc_code)
{





 return pm8xxx_read_channel_rsv(adc, ch, 0xff, adc_code, 0);
}
