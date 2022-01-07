
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;


 int lm3533_als_get_target (struct iio_dev*,unsigned int,int,int*) ;
 int lm3533_als_get_zone (struct iio_dev*,int*) ;

__attribute__((used)) static int lm3533_als_get_current(struct iio_dev *indio_dev, unsigned channel,
        int *val)
{
 u8 zone;
 u8 target;
 int ret;

 ret = lm3533_als_get_zone(indio_dev, &zone);
 if (ret)
  return ret;

 ret = lm3533_als_get_target(indio_dev, channel, zone, &target);
 if (ret)
  return ret;

 *val = target;

 return 0;
}
