
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct hi8435_priv {int dummy; } ;


 int BIT (int) ;
 int HI8435_PSEN_REG ;
 int hi8435_readb (struct hi8435_priv*,int ,int*) ;
 struct hi8435_priv* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hi8435_get_sensing_mode(struct iio_dev *idev,
       const struct iio_chan_spec *chan)
{
 struct hi8435_priv *priv = iio_priv(idev);
 int ret;
 u8 reg;

 ret = hi8435_readb(priv, HI8435_PSEN_REG, &reg);
 if (ret < 0)
  return ret;

 return !!(reg & BIT(chan->channel / 8));
}
