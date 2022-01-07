
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma7455_data {int regmap; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int MMA7455_MCTL_MODE_STANDBY ;
 int MMA7455_REG_MCTL ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct mma7455_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int regmap_write (int ,int ,int ) ;

int mma7455_core_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct mma7455_data *mma7455 = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);

 regmap_write(mma7455->regmap, MMA7455_REG_MCTL,
       MMA7455_MCTL_MODE_STANDBY);

 return 0;
}
