
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_chan_spec {int indexed; int info_mask_separate; int info_mask_separate_available; int type; int ext_info; int output; } ;
struct rescale {TYPE_2__* cfg; int ext_info; TYPE_1__* source; struct iio_chan_spec chan; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {struct iio_chan_spec* channel; } ;


 int BIT (int ) ;
 int EINVAL ;
 int IIO_CHAN_INFO_RAW ;
 int IIO_CHAN_INFO_SCALE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ iio_channel_has_available (struct iio_chan_spec const*,int ) ;
 int iio_channel_has_info (struct iio_chan_spec const*,int ) ;

__attribute__((used)) static int rescale_configure_channel(struct device *dev,
         struct rescale *rescale)
{
 struct iio_chan_spec *chan = &rescale->chan;
 struct iio_chan_spec const *schan = rescale->source->channel;

 chan->indexed = 1;
 chan->output = schan->output;
 chan->ext_info = rescale->ext_info;
 chan->type = rescale->cfg->type;

 if (!iio_channel_has_info(schan, IIO_CHAN_INFO_RAW) ||
     !iio_channel_has_info(schan, IIO_CHAN_INFO_SCALE)) {
  dev_err(dev, "source channel does not support raw/scale\n");
  return -EINVAL;
 }

 chan->info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
  BIT(IIO_CHAN_INFO_SCALE);

 if (iio_channel_has_available(schan, IIO_CHAN_INFO_RAW))
  chan->info_mask_separate_available |= BIT(IIO_CHAN_INFO_RAW);

 return 0;
}
