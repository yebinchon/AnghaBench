
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adxl372_state {struct iio_trigger* dready_trig; } ;


 int EINVAL ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adxl372_validate_trigger(struct iio_dev *indio_dev,
        struct iio_trigger *trig)
{
 struct adxl372_state *st = iio_priv(indio_dev);

 if (st->dready_trig != trig)
  return -EINVAL;

 return 0;
}
