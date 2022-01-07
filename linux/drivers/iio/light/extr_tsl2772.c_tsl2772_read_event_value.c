
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int als_thresh_high; int als_thresh_low; int prox_thres_high; int prox_thres_low; int als_persistence; int prox_persistence; int prox_time; int als_time; } ;
struct tsl2772_chip {size_t id; TYPE_1__ settings; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int IIO_INTENSITY ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int** tsl2772_int_time_avail ;

__attribute__((used)) static int tsl2772_read_event_value(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int *val, int *val2)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);
 int filter_delay, persistence;
 u8 time;

 switch (info) {
 case 128:
  if (chan->type == IIO_INTENSITY) {
   switch (dir) {
   case 130:
    *val = chip->settings.als_thresh_high;
    return IIO_VAL_INT;
   case 131:
    *val = chip->settings.als_thresh_low;
    return IIO_VAL_INT;
   default:
    return -EINVAL;
   }
  } else {
   switch (dir) {
   case 130:
    *val = chip->settings.prox_thres_high;
    return IIO_VAL_INT;
   case 131:
    *val = chip->settings.prox_thres_low;
    return IIO_VAL_INT;
   default:
    return -EINVAL;
   }
  }
  break;
 case 129:
  if (chan->type == IIO_INTENSITY) {
   time = chip->settings.als_time;
   persistence = chip->settings.als_persistence;


   if (persistence > 3)
    persistence = (persistence - 3) * 5;
  } else {
   time = chip->settings.prox_time;
   persistence = chip->settings.prox_persistence;
  }

  filter_delay = persistence * (256 - time) *
   tsl2772_int_time_avail[chip->id][3];

  *val = filter_delay / 1000000;
  *val2 = filter_delay % 1000000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
