
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int num_channels; struct iio_chan_spec const* channels; } ;
struct iio_chan_spec {int scan_index; } ;



const struct iio_chan_spec
*iio_find_channel_from_si(struct iio_dev *indio_dev, int si)
{
 int i;

 for (i = 0; i < indio_dev->num_channels; i++)
  if (indio_dev->channels[i].scan_index == si)
   return &indio_dev->channels[i];
 return ((void*)0);
}
