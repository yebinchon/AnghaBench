
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct ads124s_private {int * data; int spi; } ;


 struct ads124s_private* iio_priv (struct iio_dev*) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ads124s_write_cmd(struct iio_dev *indio_dev, u8 command)
{
 struct ads124s_private *priv = iio_priv(indio_dev);

 priv->data[0] = command;

 return spi_write(priv->spi, &priv->data[0], 1);
}
