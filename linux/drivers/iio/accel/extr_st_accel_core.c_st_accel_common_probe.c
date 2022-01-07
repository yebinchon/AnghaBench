
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_sensors_platform_data {int dummy; } ;
struct st_sensor_fullscale_avl {int dummy; } ;
struct st_sensor_data {scalar_t__ irq; TYPE_5__* sensor_settings; int odr; struct st_sensor_fullscale_avl* current_fullscale; int num_data_channels; TYPE_1__* dev; } ;
struct iio_dev {int num_channels; int name; int dev; struct iio_chan_spec* channels; int * info; int modes; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_9__ {TYPE_3__* odr_avl; } ;
struct TYPE_7__ {int * fs_avl; } ;
struct TYPE_10__ {TYPE_4__ odr; TYPE_2__ fs; int ch; } ;
struct TYPE_8__ {int hz; } ;
struct TYPE_6__ {scalar_t__ platform_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INDIO_DIRECT_MODE ;
 int ST_ACCEL_NUMBER_DATA_CHANNELS ;
 int ST_ACCEL_TRIGGER_OPS ;
 int ST_SENSORS_NUMBER_ALL_CHANNELS ;
 int accel_info ;
 scalar_t__ apply_acpi_orientation (struct iio_dev*,struct iio_chan_spec*) ;
 int default_accel_pdata ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*,int) ;
 struct iio_chan_spec* devm_kmemdup (int *,int ,size_t,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_accel_allocate_ring (struct iio_dev*) ;
 int st_accel_deallocate_ring (struct iio_dev*) ;
 int st_sensors_allocate_trigger (struct iio_dev*,int ) ;
 int st_sensors_deallocate_trigger (struct iio_dev*) ;
 int st_sensors_init_sensor (struct iio_dev*,struct st_sensors_platform_data*) ;
 int st_sensors_power_disable (struct iio_dev*) ;
 int st_sensors_power_enable (struct iio_dev*) ;
 int st_sensors_verify_id (struct iio_dev*) ;

int st_accel_common_probe(struct iio_dev *indio_dev)
{
 struct st_sensor_data *adata = iio_priv(indio_dev);
 struct st_sensors_platform_data *pdata =
  (struct st_sensors_platform_data *)adata->dev->platform_data;
 struct iio_chan_spec *channels;
 size_t channels_size;
 int err;

 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &accel_info;

 err = st_sensors_power_enable(indio_dev);
 if (err)
  return err;

 err = st_sensors_verify_id(indio_dev);
 if (err < 0)
  goto st_accel_power_off;

 adata->num_data_channels = ST_ACCEL_NUMBER_DATA_CHANNELS;
 indio_dev->num_channels = ST_SENSORS_NUMBER_ALL_CHANNELS;

 channels_size = indio_dev->num_channels * sizeof(struct iio_chan_spec);
 channels = devm_kmemdup(&indio_dev->dev,
    adata->sensor_settings->ch,
    channels_size, GFP_KERNEL);
 if (!channels) {
  err = -ENOMEM;
  goto st_accel_power_off;
 }

 if (apply_acpi_orientation(indio_dev, channels))
  dev_warn(&indio_dev->dev,
    "failed to apply ACPI orientation data: %d\n", err);

 indio_dev->channels = channels;
 adata->current_fullscale = (struct st_sensor_fullscale_avl *)
     &adata->sensor_settings->fs.fs_avl[0];
 adata->odr = adata->sensor_settings->odr.odr_avl[0].hz;

 if (!pdata)
  pdata = (struct st_sensors_platform_data *)&default_accel_pdata;

 err = st_sensors_init_sensor(indio_dev, pdata);
 if (err < 0)
  goto st_accel_power_off;

 err = st_accel_allocate_ring(indio_dev);
 if (err < 0)
  goto st_accel_power_off;

 if (adata->irq > 0) {
  err = st_sensors_allocate_trigger(indio_dev,
       ST_ACCEL_TRIGGER_OPS);
  if (err < 0)
   goto st_accel_probe_trigger_error;
 }

 err = iio_device_register(indio_dev);
 if (err)
  goto st_accel_device_register_error;

 dev_info(&indio_dev->dev, "registered accelerometer %s\n",
   indio_dev->name);

 return 0;

st_accel_device_register_error:
 if (adata->irq > 0)
  st_sensors_deallocate_trigger(indio_dev);
st_accel_probe_trigger_error:
 st_accel_deallocate_ring(indio_dev);
st_accel_power_off:
 st_sensors_power_disable(indio_dev);

 return err;
}
