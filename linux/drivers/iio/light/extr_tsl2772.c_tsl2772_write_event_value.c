
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
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int** tsl2772_int_time_avail ;
 int tsl2772_invoke_change (struct iio_dev*) ;

__attribute__((used)) static int tsl2772_write_event_value(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         enum iio_event_info info,
         int val, int val2)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);
 int ret = -EINVAL, count, persistence;
 u8 time;

 switch (info) {
 case 128:
  if (chan->type == IIO_INTENSITY) {
   switch (dir) {
   case 130:
    chip->settings.als_thresh_high = val;
    ret = 0;
    break;
   case 131:
    chip->settings.als_thresh_low = val;
    ret = 0;
    break;
   default:
    break;
   }
  } else {
   switch (dir) {
   case 130:
    chip->settings.prox_thres_high = val;
    ret = 0;
    break;
   case 131:
    chip->settings.prox_thres_low = val;
    ret = 0;
    break;
   default:
    break;
   }
  }
  break;
 case 129:
  if (chan->type == IIO_INTENSITY)
   time = chip->settings.als_time;
  else
   time = chip->settings.prox_time;

  count = 256 - time;
  persistence = ((val * 1000000) + val2) /
   (count * tsl2772_int_time_avail[chip->id][3]);

  if (chan->type == IIO_INTENSITY) {

   if (persistence > 3)
    persistence = (persistence / 5) + 3;

   chip->settings.als_persistence = persistence;
  } else {
   chip->settings.prox_persistence = persistence;
  }

  ret = 0;
  break;
 default:
  break;
 }

 if (ret < 0)
  return ret;

 return tsl2772_invoke_change(indio_dev);
}
