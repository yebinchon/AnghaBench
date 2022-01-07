
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int AD5421_REG_DAC_DATA ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int ad5421_read (struct iio_dev*,int ) ;

__attribute__((used)) static int ad5421_read_event_value(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int *val,
 int *val2)
{
 int ret;

 switch (chan->type) {
 case 129:
  ret = ad5421_read(indio_dev, AD5421_REG_DAC_DATA);
  if (ret < 0)
   return ret;
  *val = ret;
  break;
 case 128:
  *val = 140000;
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_INT;
}
