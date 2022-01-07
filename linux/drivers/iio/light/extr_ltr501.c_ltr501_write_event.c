
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 int iio_priv (struct iio_dev*) ;
 int ltr501_write_intr_prst (int ,int ,int,int) ;
 int ltr501_write_thresh (struct iio_dev*,struct iio_chan_spec const*,int,int,int,int,int) ;

__attribute__((used)) static int ltr501_write_event(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         enum iio_event_info info,
         int val, int val2)
{
 switch (info) {
 case 128:
  if (val2 != 0)
   return -EINVAL;
  return ltr501_write_thresh(indio_dev, chan, type, dir,
        info, val, val2);
 case 129:
  return ltr501_write_intr_prst(iio_priv(indio_dev), chan->type,
           val, val2);
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
