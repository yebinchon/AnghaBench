
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dummy_state {int event_en; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;

 int IIO_EV_DIR_RISING ;




 struct iio_dummy_state* iio_priv (struct iio_dev*) ;

int iio_simple_dummy_write_event_config(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     enum iio_event_type type,
     enum iio_event_direction dir,
     int state)
{
 struct iio_dummy_state *st = iio_priv(indio_dev);





 switch (chan->type) {
 case 128:
  switch (type) {
  case 130:
   if (dir == IIO_EV_DIR_RISING)
    st->event_en = state;
   else
    return -EINVAL;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 132:
  switch (type) {
  case 130:
   st->event_en = state;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 129:
  switch (type) {
  case 131:
   st->event_en = state;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
