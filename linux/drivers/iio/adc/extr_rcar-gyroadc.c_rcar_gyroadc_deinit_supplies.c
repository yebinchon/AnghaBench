
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {unsigned int num_channels; int * vref; } ;
struct iio_dev {int dummy; } ;


 struct rcar_gyroadc* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void rcar_gyroadc_deinit_supplies(struct iio_dev *indio_dev)
{
 struct rcar_gyroadc *priv = iio_priv(indio_dev);
 unsigned int i;

 for (i = 0; i < priv->num_channels; i++) {
  if (!priv->vref[i])
   continue;

  regulator_disable(priv->vref[i]);
 }
}
