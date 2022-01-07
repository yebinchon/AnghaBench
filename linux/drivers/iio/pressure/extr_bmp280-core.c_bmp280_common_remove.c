
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmp280_data {int vddd; int vdda; int dev; } ;


 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct bmp280_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int regulator_disable (int ) ;

int bmp280_common_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct bmp280_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 pm_runtime_get_sync(data->dev);
 pm_runtime_put_noidle(data->dev);
 pm_runtime_disable(data->dev);
 regulator_disable(data->vdda);
 regulator_disable(data->vddd);
 return 0;
}
