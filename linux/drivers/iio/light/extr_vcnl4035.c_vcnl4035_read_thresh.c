
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4035_data {int als_thresh_high; int als_thresh_low; int als_persistence; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int IIO_VAL_INT ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int vcnl4035_read_thresh(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, enum iio_event_info info,
  int *val, int *val2)
{
 struct vcnl4035_data *data = iio_priv(indio_dev);

 switch (info) {
 case 128:
  switch (dir) {
  case 130:
   *val = data->als_thresh_high;
   return IIO_VAL_INT;
  case 131:
   *val = data->als_thresh_low;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
  break;
 case 129:
  *val = data->als_persistence;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

}
