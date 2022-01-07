
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms5611_state {int vdd; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int devm_regulator_get (int ,char*) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int ms5611_read_prom (struct iio_dev*) ;
 int ms5611_reset (struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int ms5611_init(struct iio_dev *indio_dev)
{
 int ret;
 struct ms5611_state *st = iio_priv(indio_dev);


 st->vdd = devm_regulator_get(indio_dev->dev.parent, "vdd");
 if (IS_ERR(st->vdd))
  return PTR_ERR(st->vdd);

 ret = regulator_enable(st->vdd);
 if (ret) {
  dev_err(indio_dev->dev.parent,
   "failed to enable Vdd supply: %d\n", ret);
  return ret;
 }

 ret = ms5611_reset(indio_dev);
 if (ret < 0)
  goto err_regulator_disable;

 ret = ms5611_read_prom(indio_dev);
 if (ret < 0)
  goto err_regulator_disable;

 return 0;

err_regulator_disable:
 regulator_disable(st->vdd);
 return ret;
}
