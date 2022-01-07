
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int channel; } ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 unsigned int AD7998_DATAHIGH_REG (int ) ;
 unsigned int AD7998_DATALOW_REG (int ) ;
 unsigned int AD7998_HYST_REG (int ) ;
 unsigned int EINVAL ;
 int IIO_EV_DIR_FALLING ;



__attribute__((used)) static unsigned int ad799x_threshold_reg(const struct iio_chan_spec *chan,
      enum iio_event_direction dir,
      enum iio_event_info info)
{
 switch (info) {
 case 128:
  if (dir == IIO_EV_DIR_FALLING)
   return AD7998_DATALOW_REG(chan->channel);
  else
   return AD7998_DATAHIGH_REG(chan->channel);
 case 129:
  return AD7998_HYST_REG(chan->channel);
 default:
  return -EINVAL;
 }

 return 0;
}
