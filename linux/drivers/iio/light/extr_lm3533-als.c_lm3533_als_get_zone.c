
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int zone; int flags; } ;
struct iio_dev {int dummy; } ;


 int LM3533_ALS_FLAG_INT_ENABLED ;
 int _lm3533_als_get_zone (struct iio_dev*,int *) ;
 int atomic_read (int *) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int lm3533_als_get_zone(struct iio_dev *indio_dev, u8 *zone)
{
 struct lm3533_als *als = iio_priv(indio_dev);
 int ret;

 if (test_bit(LM3533_ALS_FLAG_INT_ENABLED, &als->flags)) {
  *zone = atomic_read(&als->zone);
 } else {
  ret = _lm3533_als_get_zone(indio_dev, zone);
  if (ret)
   return ret;
 }

 return 0;
}
