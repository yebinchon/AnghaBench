
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct ad5446_state {int reg; } ;


 int IS_ERR (int ) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad5446_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ad5446_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct ad5446_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);

 return 0;
}
