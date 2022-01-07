
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {int mask_low; int mask_high; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int channel; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int IIO_EV_DIR_FALLING ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max1363_read_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir)
{
 struct max1363_state *st = iio_priv(indio_dev);
 int val;
 int number = chan->channel;

 mutex_lock(&indio_dev->mlock);
 if (dir == IIO_EV_DIR_FALLING)
  val = (1 << number) & st->mask_low;
 else
  val = (1 << number) & st->mask_high;
 mutex_unlock(&indio_dev->mlock);

 return val;
}
