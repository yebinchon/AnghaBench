
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {int regmap; } ;
struct iio_dev {int dummy; } ;


 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

int st_sensors_debugfs_reg_access(struct iio_dev *indio_dev,
      unsigned reg, unsigned writeval,
      unsigned *readval)
{
 struct st_sensor_data *sdata = iio_priv(indio_dev);
 int err;

 if (!readval)
  return regmap_write(sdata->regmap, reg, writeval);

 err = regmap_read(sdata->regmap, reg, readval);
 if (err < 0)
  return err;

 return 0;
}
