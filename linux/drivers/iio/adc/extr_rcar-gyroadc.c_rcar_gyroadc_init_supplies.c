
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {unsigned int num_channels; int * vref; struct device* dev; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,unsigned int,int) ;
 struct rcar_gyroadc* iio_priv (struct iio_dev*) ;
 int rcar_gyroadc_deinit_supplies (struct iio_dev*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int rcar_gyroadc_init_supplies(struct iio_dev *indio_dev)
{
 struct rcar_gyroadc *priv = iio_priv(indio_dev);
 struct device *dev = priv->dev;
 unsigned int i;
 int ret;

 for (i = 0; i < priv->num_channels; i++) {
  if (!priv->vref[i])
   continue;

  ret = regulator_enable(priv->vref[i]);
  if (ret) {
   dev_err(dev, "Failed to enable regulator %i (ret=%i)\n",
    i, ret);
   goto err;
  }
 }

 return 0;

err:
 rcar_gyroadc_deinit_supplies(indio_dev);
 return ret;
}
