
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad7606_state {struct iio_trigger* trig; } ;


 int EINVAL ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7606_validate_trigger(struct iio_dev *indio_dev,
       struct iio_trigger *trig)
{
 struct ad7606_state *st = iio_priv(indio_dev);

 if (st->trig != trig)
  return -EINVAL;

 return 0;
}
