
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct hts221_hw {struct iio_trigger* trig; } ;


 int EINVAL ;
 struct hts221_hw* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hts221_validate_trigger(struct iio_dev *iio_dev,
       struct iio_trigger *trig)
{
 struct hts221_hw *hw = iio_priv(iio_dev);

 return hw->trig == trig ? 0 : -EINVAL;
}
