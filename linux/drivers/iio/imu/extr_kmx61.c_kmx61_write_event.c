
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {int wake_thresh; int wake_duration; scalar_t__ ev_enable_state; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EBUSY ;
 int EINVAL ;


 int IIO_VAL_INT ;
 struct kmx61_data* kmx61_get_data (struct iio_dev*) ;

__attribute__((used)) static int kmx61_write_event(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int val, int val2)
{
 struct kmx61_data *data = kmx61_get_data(indio_dev);

 if (data->ev_enable_state)
  return -EBUSY;

 switch (info) {
 case 128:
  data->wake_thresh = val;
  return IIO_VAL_INT;
 case 129:
  data->wake_duration = val;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
