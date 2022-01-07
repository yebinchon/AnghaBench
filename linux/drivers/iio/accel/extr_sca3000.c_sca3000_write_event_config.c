
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int address; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_freefall_set_state (struct iio_dev*,int) ;
 int sca3000_motion_detect_set_state (struct iio_dev*,int ,int) ;

__attribute__((used)) static int sca3000_write_event_config(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir,
          int state)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);
 switch (chan->channel2) {
 case 130:
  ret = sca3000_freefall_set_state(indio_dev, state);
  break;

 case 131:
 case 129:
 case 128:
  ret = sca3000_motion_detect_set_state(indio_dev,
            chan->address,
            state);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 mutex_unlock(&st->lock);

 return ret;
}
