
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_sensor_data {void* vdd; void* vdd_io; } ;
struct TYPE_3__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 void* devm_regulator_get (int ,char*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int regulator_disable (void*) ;
 int regulator_enable (void*) ;

int st_sensors_power_enable(struct iio_dev *indio_dev)
{
 struct st_sensor_data *pdata = iio_priv(indio_dev);
 int err;


 pdata->vdd = devm_regulator_get(indio_dev->dev.parent, "vdd");
 if (IS_ERR(pdata->vdd)) {
  dev_err(&indio_dev->dev, "unable to get Vdd supply\n");
  return PTR_ERR(pdata->vdd);
 }
 err = regulator_enable(pdata->vdd);
 if (err != 0) {
  dev_warn(&indio_dev->dev,
    "Failed to enable specified Vdd supply\n");
  return err;
 }

 pdata->vdd_io = devm_regulator_get(indio_dev->dev.parent, "vddio");
 if (IS_ERR(pdata->vdd_io)) {
  dev_err(&indio_dev->dev, "unable to get Vdd_IO supply\n");
  err = PTR_ERR(pdata->vdd_io);
  goto st_sensors_disable_vdd;
 }
 err = regulator_enable(pdata->vdd_io);
 if (err != 0) {
  dev_warn(&indio_dev->dev,
    "Failed to enable specified Vdd_IO supply\n");
  goto st_sensors_disable_vdd;
 }

 return 0;

st_sensors_disable_vdd:
 regulator_disable(pdata->vdd);
 return err;
}
