
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int* tx_buf; int len; int cs_change; int* rx_buf; } ;
struct iio_dev {int dummy; } ;
struct ads124s_private {int* data; int spi; } ;


 int ADS124S08_CMD_NOP ;
 int ADS124S08_CMD_RDATA ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 struct ads124s_private* iio_priv (struct iio_dev*) ;
 int memset (int*,int ,int) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int ads124s_read(struct iio_dev *indio_dev, unsigned int chan)
{
 struct ads124s_private *priv = iio_priv(indio_dev);
 int ret;
 u32 tmp;
 struct spi_transfer t[] = {
  {
   .tx_buf = &priv->data[0],
   .len = 4,
   .cs_change = 1,
  }, {
   .tx_buf = &priv->data[1],
   .rx_buf = &priv->data[1],
   .len = 4,
  },
 };

 priv->data[0] = ADS124S08_CMD_RDATA;
 memset(&priv->data[1], ADS124S08_CMD_NOP, sizeof(priv->data) - 1);

 ret = spi_sync_transfer(priv->spi, t, ARRAY_SIZE(t));
 if (ret < 0)
  return ret;

 tmp = priv->data[2] << 16 | priv->data[3] << 8 | priv->data[4];

 return tmp;
}
