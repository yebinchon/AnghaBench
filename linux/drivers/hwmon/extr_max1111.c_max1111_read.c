
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct max1111_data {int* tx_buf; int sel_sh; int* rx_buf; int drvdata_lock; int msg; int spi; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int MAX1111_CTRL_PD0 ;
 int MAX1111_CTRL_PD1 ;
 int MAX1111_CTRL_SGL ;
 int MAX1111_CTRL_STR ;
 int MAX1111_CTRL_UNI ;
 int dev_err (struct device*,char*,int) ;
 struct max1111_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int max1111_read(struct device *dev, int channel)
{
 struct max1111_data *data = dev_get_drvdata(dev);
 uint8_t v1, v2;
 int err;


 mutex_lock(&data->drvdata_lock);

 data->tx_buf[0] = (channel << data->sel_sh) |
  MAX1111_CTRL_PD0 | MAX1111_CTRL_PD1 |
  MAX1111_CTRL_SGL | MAX1111_CTRL_UNI | MAX1111_CTRL_STR;

 err = spi_sync(data->spi, &data->msg);
 if (err < 0) {
  dev_err(dev, "spi_sync failed with %d\n", err);
  mutex_unlock(&data->drvdata_lock);
  return err;
 }

 v1 = data->rx_buf[0];
 v2 = data->rx_buf[1];

 mutex_unlock(&data->drvdata_lock);

 if ((v1 & 0xc0) || (v2 & 0x3f))
  return -EINVAL;

 return (v1 << 2) | (v2 >> 6);
}
