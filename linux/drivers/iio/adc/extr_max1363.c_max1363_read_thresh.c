
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {int* thresh_low; int* thresh_high; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int IIO_EV_DIR_FALLING ;
 int IIO_VAL_INT ;
 struct max1363_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max1363_read_thresh(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int *val,
 int *val2)
{
 struct max1363_state *st = iio_priv(indio_dev);
 if (dir == IIO_EV_DIR_FALLING)
  *val = st->thresh_low[chan->channel];
 else
  *val = st->thresh_high[chan->channel];
 return IIO_VAL_INT;
}
