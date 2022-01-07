
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct adxl345_data {int regmap; } ;


 int ADXL345_POWER_CTL_STANDBY ;
 int ADXL345_REG_POWER_CTL ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct adxl345_data* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int ) ;

int adxl345_core_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct adxl345_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 return regmap_write(data->regmap, ADXL345_REG_POWER_CTL,
       ADXL345_POWER_CTL_STANDBY);
}
