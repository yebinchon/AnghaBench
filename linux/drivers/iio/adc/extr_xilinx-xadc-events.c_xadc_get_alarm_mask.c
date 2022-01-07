
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {scalar_t__ type; int channel; } ;


 scalar_t__ IIO_TEMP ;
 unsigned int XADC_ALARM_OT_MASK ;
 unsigned int XADC_ALARM_VCCAUX_MASK ;
 unsigned int XADC_ALARM_VCCBRAM_MASK ;
 unsigned int XADC_ALARM_VCCINT_MASK ;
 unsigned int XADC_ALARM_VCCODDR_MASK ;
 unsigned int XADC_ALARM_VCCPAUX_MASK ;
 unsigned int XADC_ALARM_VCCPINT_MASK ;

__attribute__((used)) static unsigned int xadc_get_alarm_mask(const struct iio_chan_spec *chan)
{
 if (chan->type == IIO_TEMP)
  return XADC_ALARM_OT_MASK;
 switch (chan->channel) {
 case 0:
  return XADC_ALARM_VCCINT_MASK;
 case 1:
  return XADC_ALARM_VCCAUX_MASK;
 case 2:
  return XADC_ALARM_VCCBRAM_MASK;
 case 3:
  return XADC_ALARM_VCCPINT_MASK;
 case 4:
  return XADC_ALARM_VCCPAUX_MASK;
 case 5:
  return XADC_ALARM_VCCODDR_MASK;
 default:

  return 0;
 }
}
