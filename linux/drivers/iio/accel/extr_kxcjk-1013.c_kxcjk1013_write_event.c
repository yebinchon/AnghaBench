
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {int wake_thres; int wake_dur; scalar_t__ ev_enable_state; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EBUSY ;
 int EINVAL ;


 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int kxcjk1013_write_event(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int val, int val2)
{
 struct kxcjk1013_data *data = iio_priv(indio_dev);

 if (data->ev_enable_state)
  return -EBUSY;

 switch (info) {
 case 128:
  data->wake_thres = val;
  break;
 case 129:
  data->wake_dur = val;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
