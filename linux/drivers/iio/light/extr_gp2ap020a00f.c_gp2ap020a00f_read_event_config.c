
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct gp2ap020a00f_data {int lock; int flags; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int GP2AP020A00F_FLAG_ALS_FALLING_EV ;
 int GP2AP020A00F_FLAG_ALS_RISING_EV ;
 int GP2AP020A00F_FLAG_PROX_FALLING_EV ;
 int GP2AP020A00F_FLAG_PROX_RISING_EV ;
 int IIO_EV_DIR_RISING ;


 struct gp2ap020a00f_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int gp2ap020a00f_read_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir)
{
 struct gp2ap020a00f_data *data = iio_priv(indio_dev);
 int event_en = 0;

 mutex_lock(&data->lock);

 switch (chan->type) {
 case 128:
  if (dir == IIO_EV_DIR_RISING)
   event_en = test_bit(GP2AP020A00F_FLAG_PROX_RISING_EV,
        &data->flags);
  else
   event_en = test_bit(GP2AP020A00F_FLAG_PROX_FALLING_EV,
        &data->flags);
  break;
 case 129:
  if (dir == IIO_EV_DIR_RISING)
   event_en = test_bit(GP2AP020A00F_FLAG_ALS_RISING_EV,
        &data->flags);
  else
   event_en = test_bit(GP2AP020A00F_FLAG_ALS_FALLING_EV,
        &data->flags);
  break;
 default:
  event_en = -EINVAL;
  break;
 }

 mutex_unlock(&data->lock);

 return event_en;
}
