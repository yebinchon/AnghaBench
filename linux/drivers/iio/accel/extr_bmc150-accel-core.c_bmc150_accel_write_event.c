
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmc150_accel_data {int slope_thres; int slope_dur; scalar_t__ ev_enable_state; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int BMC150_ACCEL_SLOPE_DUR_MASK ;
 int BMC150_ACCEL_SLOPE_THRES_MASK ;
 int EBUSY ;
 int EINVAL ;


 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmc150_accel_write_event(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int val, int val2)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);

 if (data->ev_enable_state)
  return -EBUSY;

 switch (info) {
 case 128:
  data->slope_thres = val & BMC150_ACCEL_SLOPE_THRES_MASK;
  break;
 case 129:
  data->slope_dur = val & BMC150_ACCEL_SLOPE_DUR_MASK;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
