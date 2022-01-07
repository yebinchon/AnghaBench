
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ads124s_private {scalar_t__ reset_gpio; } ;


 int ADS124S08_CMD_RESET ;
 int ads124s_write_cmd (struct iio_dev*,int ) ;
 int gpiod_set_value (scalar_t__,int) ;
 struct ads124s_private* iio_priv (struct iio_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int ads124s_reset(struct iio_dev *indio_dev)
{
 struct ads124s_private *priv = iio_priv(indio_dev);

 if (priv->reset_gpio) {
  gpiod_set_value(priv->reset_gpio, 0);
  udelay(200);
  gpiod_set_value(priv->reset_gpio, 1);
 } else {
  return ads124s_write_cmd(indio_dev, ADS124S08_CMD_RESET);
 }

 return 0;
}
