
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {scalar_t__ model; scalar_t__ regs; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 unsigned int RCAR_GYROADC_FIFO_STATUS ;
 unsigned int RCAR_GYROADC_INTENR ;
 scalar_t__ RCAR_GYROADC_MODEL_R8A7792 ;
 struct rcar_gyroadc* iio_priv (struct iio_dev*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int rcar_gyroadc_reg_access(struct iio_dev *indio_dev,
       unsigned int reg, unsigned int writeval,
       unsigned int *readval)
{
 struct rcar_gyroadc *priv = iio_priv(indio_dev);
 unsigned int maxreg = RCAR_GYROADC_FIFO_STATUS;

 if (readval == ((void*)0))
  return -EINVAL;

 if (reg % 4)
  return -EINVAL;


 if (priv->model == RCAR_GYROADC_MODEL_R8A7792)
  maxreg = RCAR_GYROADC_INTENR;

 if (reg > maxreg)
  return -EINVAL;

 *readval = readl(priv->regs + reg);

 return 0;
}
