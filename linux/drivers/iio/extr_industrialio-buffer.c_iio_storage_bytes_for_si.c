
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int storagebits; int repeat; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;


 struct iio_chan_spec* iio_find_channel_from_si (struct iio_dev*,unsigned int) ;

__attribute__((used)) static unsigned int iio_storage_bytes_for_si(struct iio_dev *indio_dev,
          unsigned int scan_index)
{
 const struct iio_chan_spec *ch;
 unsigned int bytes;

 ch = iio_find_channel_from_si(indio_dev, scan_index);
 bytes = ch->scan_type.storagebits / 8;
 if (ch->scan_type.repeat > 1)
  bytes *= ch->scan_type.repeat;
 return bytes;
}
