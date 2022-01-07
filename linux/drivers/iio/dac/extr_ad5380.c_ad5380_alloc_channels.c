
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {struct iio_chan_spec* channels; } ;
struct iio_chan_spec {unsigned int channel; unsigned int address; } ;
struct ad5380_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {unsigned int num_channels; struct iio_chan_spec channel_template; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 struct iio_chan_spec* kcalloc (unsigned int,int,int ) ;

__attribute__((used)) static int ad5380_alloc_channels(struct iio_dev *indio_dev)
{
 struct ad5380_state *st = iio_priv(indio_dev);
 struct iio_chan_spec *channels;
 unsigned int i;

 channels = kcalloc(st->chip_info->num_channels,
      sizeof(struct iio_chan_spec), GFP_KERNEL);

 if (!channels)
  return -ENOMEM;

 for (i = 0; i < st->chip_info->num_channels; ++i) {
  channels[i] = st->chip_info->channel_template;
  channels[i].channel = i;
  channels[i].address = i;
 }

 indio_dev->channels = channels;

 return 0;
}
