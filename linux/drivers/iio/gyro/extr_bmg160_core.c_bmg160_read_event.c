
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmg160_data {int slope_thres; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int BMG160_SLOPE_THRES_MASK ;
 int EINVAL ;

 int IIO_VAL_INT ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmg160_read_event(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int *val, int *val2)
{
 struct bmg160_data *data = iio_priv(indio_dev);

 *val2 = 0;
 switch (info) {
 case 128:
  *val = data->slope_thres & BMG160_SLOPE_THRES_MASK;
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_INT;
}
