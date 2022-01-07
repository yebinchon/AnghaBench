
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1027_state {struct iio_trigger* trig; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct max1027_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max1027_validate_trigger(struct iio_dev *indio_dev,
        struct iio_trigger *trig)
{
 struct max1027_state *st = iio_priv(indio_dev);

 if (st->trig != trig)
  return -EINVAL;

 return 0;
}
