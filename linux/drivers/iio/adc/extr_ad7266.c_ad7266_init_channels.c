
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {scalar_t__ masklength; int available_scan_masks; scalar_t__ num_channels; int channels; } ;
struct ad7266_state {scalar_t__ mode; scalar_t__ range; int fixed_addr; } ;
struct ad7266_chan_info {scalar_t__ num_channels; int scan_masks; int channels; } ;


 int AD7266_CHAN_INFO_INDEX (int,int,int ) ;
 scalar_t__ AD7266_MODE_DIFF ;
 scalar_t__ AD7266_MODE_SINGLE_ENDED ;
 scalar_t__ AD7266_RANGE_2VREF ;
 struct ad7266_chan_info* ad7266_chan_infos ;
 struct ad7266_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static void ad7266_init_channels(struct iio_dev *indio_dev)
{
 struct ad7266_state *st = iio_priv(indio_dev);
 bool is_differential, is_signed;
 const struct ad7266_chan_info *chan_info;
 int i;

 is_differential = st->mode != AD7266_MODE_SINGLE_ENDED;
 is_signed = (st->range == AD7266_RANGE_2VREF) |
      (st->mode == AD7266_MODE_DIFF);

 i = AD7266_CHAN_INFO_INDEX(is_differential, is_signed, st->fixed_addr);
 chan_info = &ad7266_chan_infos[i];

 indio_dev->channels = chan_info->channels;
 indio_dev->num_channels = chan_info->num_channels;
 indio_dev->available_scan_masks = chan_info->scan_masks;
 indio_dev->masklength = chan_info->num_channels - 1;
}
