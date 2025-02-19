
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {scalar_t__ type; int channel; } ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int IIO_EV_DIR_FALLING ;
 scalar_t__ IIO_TEMP ;
 unsigned int XADC_THRESHOLD_OT_MAX ;

__attribute__((used)) static unsigned int xadc_get_threshold_offset(const struct iio_chan_spec *chan,
 enum iio_event_direction dir)
{
 unsigned int offset;

 if (chan->type == IIO_TEMP) {
  offset = XADC_THRESHOLD_OT_MAX;
 } else {
  if (chan->channel < 2)
   offset = chan->channel + 1;
  else
   offset = chan->channel + 6;
 }

 if (dir == IIO_EV_DIR_FALLING)
  offset += 4;

 return offset;
}
