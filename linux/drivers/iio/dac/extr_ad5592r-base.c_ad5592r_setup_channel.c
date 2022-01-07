
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {unsigned char sign; int realbits; int storagebits; } ;
struct iio_chan_spec {int indexed; int output; unsigned int channel; int ext_info; TYPE_1__ scan_type; void* info_mask_shared_by_type; void* info_mask_separate; int type; } ;


 void* BIT (int ) ;
 int IIO_CHAN_INFO_RAW ;
 int IIO_CHAN_INFO_SCALE ;
 int IIO_VOLTAGE ;
 int ad5592r_ext_info ;

__attribute__((used)) static void ad5592r_setup_channel(struct iio_dev *iio_dev,
  struct iio_chan_spec *chan, bool output, unsigned id)
{
 chan->type = IIO_VOLTAGE;
 chan->indexed = 1;
 chan->output = output;
 chan->channel = id;
 chan->info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
 chan->info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE);
 chan->scan_type.sign = 'u';
 chan->scan_type.realbits = 12;
 chan->scan_type.storagebits = 16;
 chan->ext_info = ad5592r_ext_info;
}
