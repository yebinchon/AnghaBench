
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_settings {int dummy; } ;
struct st_sensor_data {struct st_sensor_settings* sensor_settings; } ;
struct spi_device {int dev; int modalias; } ;
struct iio_dev {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int dev_err (int *,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_magn_common_probe (struct iio_dev*) ;
 struct st_sensor_settings* st_magn_get_settings (int ) ;
 int st_magn_of_match ;
 int st_sensors_of_name_probe (int *,int ,int ,int) ;
 int st_sensors_spi_configure (struct iio_dev*,struct spi_device*) ;

__attribute__((used)) static int st_magn_spi_probe(struct spi_device *spi)
{
 const struct st_sensor_settings *settings;
 struct st_sensor_data *mdata;
 struct iio_dev *indio_dev;
 int err;

 st_sensors_of_name_probe(&spi->dev, st_magn_of_match,
     spi->modalias, sizeof(spi->modalias));

 settings = st_magn_get_settings(spi->modalias);
 if (!settings) {
  dev_err(&spi->dev, "device name %s not recognized.\n",
   spi->modalias);
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*mdata));
 if (!indio_dev)
  return -ENOMEM;

 mdata = iio_priv(indio_dev);
 mdata->sensor_settings = (struct st_sensor_settings *)settings;

 err = st_sensors_spi_configure(indio_dev, spi);
 if (err < 0)
  return err;

 err = st_magn_common_probe(indio_dev);
 if (err < 0)
  return err;

 return 0;
}
