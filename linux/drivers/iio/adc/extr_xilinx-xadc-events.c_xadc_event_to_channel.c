
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {struct iio_chan_spec const* channels; } ;
struct iio_chan_spec {int dummy; } ;







__attribute__((used)) static const struct iio_chan_spec *xadc_event_to_channel(
 struct iio_dev *indio_dev, unsigned int event)
{
 switch (event) {
 case 131:
 case 130:
  return &indio_dev->channels[0];
 case 128:
 case 129:
  return &indio_dev->channels[event];
 default:
  return &indio_dev->channels[event-1];
 }
}
