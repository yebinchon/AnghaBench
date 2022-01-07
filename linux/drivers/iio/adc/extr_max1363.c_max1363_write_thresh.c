
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max1363_state {int* thresh_low; int* thresh_high; TYPE_1__* chip_info; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_2__ {int bits; } ;


 int EINVAL ;


 struct max1363_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max1363_write_thresh(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int val,
 int val2)
{
 struct max1363_state *st = iio_priv(indio_dev);

 switch (st->chip_info->bits) {
 case 10:
  if (val > 0x3FF)
   return -EINVAL;
  break;
 case 12:
  if (val > 0xFFF)
   return -EINVAL;
  break;
 }

 switch (dir) {
 case 129:
  st->thresh_low[chan->channel] = val;
  break;
 case 128:
  st->thresh_high[chan->channel] = val;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
