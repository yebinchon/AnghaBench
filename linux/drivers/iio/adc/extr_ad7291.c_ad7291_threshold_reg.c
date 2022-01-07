
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int type; unsigned int channel; } ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 unsigned int AD7291_DATA_HIGH (unsigned int) ;
 unsigned int AD7291_DATA_LOW (unsigned int) ;
 unsigned int AD7291_HYST (unsigned int) ;
 unsigned int AD7291_VOLTAGE_OFFSET ;
 int IIO_EV_DIR_FALLING ;





__attribute__((used)) static unsigned int ad7291_threshold_reg(const struct iio_chan_spec *chan,
      enum iio_event_direction dir,
      enum iio_event_info info)
{
 unsigned int offset;

 switch (chan->type) {
 case 128:
  offset = chan->channel;
  break;
 case 129:
  offset = AD7291_VOLTAGE_OFFSET;
  break;
 default:
     return 0;
 }

 switch (info) {
 case 130:
  if (dir == IIO_EV_DIR_FALLING)
   return AD7291_DATA_HIGH(offset);
  else
   return AD7291_DATA_LOW(offset);
 case 131:
  return AD7291_HYST(offset);
 default:
  break;
 }
 return 0;
}
