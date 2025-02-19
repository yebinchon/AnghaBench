
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct apds9960_data {int pxs_int; int als_int; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 struct apds9960_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int apds9960_read_event_config(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir)
{
 struct apds9960_data *data = iio_priv(indio_dev);

 switch (chan->type) {
 case 128:
  return data->pxs_int;
 case 129:
  return data->als_int;
 default:
  return -EINVAL;
 }

 return 0;
}
