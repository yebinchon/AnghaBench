
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_2__ {int shift; scalar_t__ realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad799x_state {int client; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int GENMASK (scalar_t__,int ) ;
 int ad799x_threshold_reg (struct iio_chan_spec const*,int,int) ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;
 struct ad799x_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad799x_write_event_value(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int val, int val2)
{
 int ret;
 struct ad799x_state *st = iio_priv(indio_dev);

 if (val < 0 || val > GENMASK(chan->scan_type.realbits - 1, 0))
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);
 ret = i2c_smbus_write_word_swapped(st->client,
  ad799x_threshold_reg(chan, dir, info),
  val << chan->scan_type.shift);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
