
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {struct iio_chan_spec const* channels; } ;
struct iio_chan_spec {int dummy; } ;


 int at91_adc_chan_xlate (struct iio_dev*,int) ;

__attribute__((used)) static inline struct iio_chan_spec const *
at91_adc_chan_get(struct iio_dev *indio_dev, int chan)
{
 int index = at91_adc_chan_xlate(indio_dev, chan);

 if (index < 0)
  return ((void*)0);
 return indio_dev->channels + index;
}
