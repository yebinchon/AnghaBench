
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {int vdd_io; int vdd; } ;
struct iio_dev {int dummy; } ;


 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

void st_sensors_power_disable(struct iio_dev *indio_dev)
{
 struct st_sensor_data *pdata = iio_priv(indio_dev);

 regulator_disable(pdata->vdd);
 regulator_disable(pdata->vdd_io);
}
