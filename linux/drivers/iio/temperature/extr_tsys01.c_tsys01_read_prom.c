
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsys01_dev {int (* read_prom_word ) (int ,scalar_t__,int*) ;int* prom; int client; } ;
struct iio_dev {int dev; } ;


 int ENODEV ;
 scalar_t__ TSYS01_PROM_READ ;
 int TSYS01_PROM_WORDS_NB ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,char*) ;
 struct tsys01_dev* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (int ,scalar_t__,int*) ;
 int tsys01_crc_valid (int*) ;

__attribute__((used)) static int tsys01_read_prom(struct iio_dev *indio_dev)
{
 int i, ret;
 struct tsys01_dev *dev_data = iio_priv(indio_dev);
 char buf[7 * TSYS01_PROM_WORDS_NB + 1];
 char *ptr = buf;

 for (i = 0; i < TSYS01_PROM_WORDS_NB; i++) {
  ret = dev_data->read_prom_word(dev_data->client,
            TSYS01_PROM_READ + (i << 1),
            &dev_data->prom[i]);
  if (ret)
   return ret;

  ret = sprintf(ptr, "0x%04x ", dev_data->prom[i]);
  ptr += ret;
 }

 if (!tsys01_crc_valid(dev_data->prom)) {
  dev_err(&indio_dev->dev, "prom crc check error\n");
  return -ENODEV;
 }
 *ptr = 0;
 dev_info(&indio_dev->dev, "PROM coefficients : %s\n", buf);

 return 0;
}
