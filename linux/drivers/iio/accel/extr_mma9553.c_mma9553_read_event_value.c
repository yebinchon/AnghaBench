
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int actthd; int speed_step; } ;
struct mma9553_data {TYPE_1__ conf; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int MMA9553_ACTIVITY_THD_TO_SEC (int ) ;
 int MMA9553_MASK_CONF_STEPCOALESCE ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9553_get_bits (int ,int ) ;

__attribute__((used)) static int mma9553_read_event_value(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int *val, int *val2)
{
 struct mma9553_data *data = iio_priv(indio_dev);

 *val2 = 0;
 switch (info) {
 case 129:
  switch (chan->type) {
  case 128:
   *val = mma9553_get_bits(data->conf.speed_step,
      MMA9553_MASK_CONF_STEPCOALESCE);
   return IIO_VAL_INT;
  case 131:




   *val = 50;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 130:
  switch (chan->type) {
  case 131:
   *val = MMA9553_ACTIVITY_THD_TO_SEC(data->conf.actthd);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
