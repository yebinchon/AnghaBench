
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct bh1780_data {int dummy; } ;


 int BH1780_POFF ;
 int BH1780_REG_CONTROL ;
 int bh1780_write (struct bh1780_data*,int ,int ) ;
 int dev_err (int *,char*) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct bh1780_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int bh1780_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct bh1780_data *bh1780 = iio_priv(indio_dev);
 int ret;

 iio_device_unregister(indio_dev);
 pm_runtime_get_sync(&client->dev);
 pm_runtime_put_noidle(&client->dev);
 pm_runtime_disable(&client->dev);
 ret = bh1780_write(bh1780, BH1780_REG_CONTROL, BH1780_POFF);
 if (ret < 0) {
  dev_err(&client->dev, "failed to power off\n");
  return ret;
 }

 return 0;
}
