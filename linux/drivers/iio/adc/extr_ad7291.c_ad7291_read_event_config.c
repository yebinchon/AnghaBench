
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;
struct ad7291_chip_info {int c_mask; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int BIT (int ) ;
 int EINVAL ;


 struct ad7291_chip_info* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7291_read_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir)
{
 struct ad7291_chip_info *chip = iio_priv(indio_dev);





 switch (chan->type) {
 case 128:
  return !!(chip->c_mask & BIT(15 - chan->channel));
 case 129:

  return 1;
 default:
  return -EINVAL;
 }

}
