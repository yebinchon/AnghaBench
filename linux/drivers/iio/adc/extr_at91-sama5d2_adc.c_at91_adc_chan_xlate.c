
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {int scan_index; } ;


 int EINVAL ;

__attribute__((used)) static int at91_adc_chan_xlate(struct iio_dev *indio_dev, int chan)
{
 int i;

 for (i = 0; i < indio_dev->num_channels; i++) {
  if (indio_dev->channels[i].scan_index == chan)
   return i;
 }
 return -EINVAL;
}
