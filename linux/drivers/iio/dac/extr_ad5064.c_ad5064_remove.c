
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ad5064_state {int vref_reg; int use_internal_vref; } ;


 int ad5064_num_vref (struct ad5064_state*) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad5064_state* iio_priv (struct iio_dev*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int ad5064_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct ad5064_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (!st->use_internal_vref)
  regulator_bulk_disable(ad5064_num_vref(st), st->vref_reg);

 return 0;
}
