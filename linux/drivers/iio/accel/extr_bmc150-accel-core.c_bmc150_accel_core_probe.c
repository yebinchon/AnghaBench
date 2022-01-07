
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; int buffer; int * info; int modes; int available_scan_masks; int num_channels; int channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int irq; struct regmap* regmap; TYPE_2__* chip_info; int mutex; int orientation; } ;
struct TYPE_4__ {char const* name; int num_channels; int channels; } ;


 int BMC150_ACCEL_INT_MODE_LATCH_RESET ;
 int BMC150_ACCEL_IRQ_NAME ;
 int BMC150_ACCEL_REG_INT_RST_LATCH ;
 scalar_t__ BMC150_ACCEL_TRIGGERS ;
 int BMC150_AUTO_SUSPEND_DELAY_MS ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int INDIO_DIRECT_MODE ;
 int IRQF_TRIGGER_RISING ;
 int bmc150_accel_buffer_ops ;
 int bmc150_accel_chip_init (struct bmc150_accel_data*) ;
 int bmc150_accel_fifo_attributes ;
 int bmc150_accel_info ;
 int bmc150_accel_info_fifo ;
 int bmc150_accel_interrupts_setup (struct iio_dev*,struct bmc150_accel_data*) ;
 int bmc150_accel_irq_handler ;
 int bmc150_accel_irq_thread_handler ;
 int bmc150_accel_scan_masks ;
 int bmc150_accel_trigger_handler ;
 int bmc150_accel_triggers_setup (struct iio_dev*,struct bmc150_accel_data*) ;
 int bmc150_accel_unregister_triggers (struct bmc150_accel_data*,scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,int ,struct iio_dev*) ;
 int iio_buffer_set_attrs (int ,int ) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int iio_read_mount_matrix (struct device*,char*,int *) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int regmap_write (struct regmap*,int ,int ) ;

int bmc150_accel_core_probe(struct device *dev, struct regmap *regmap, int irq,
       const char *name, bool block_supported)
{
 struct bmc150_accel_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);
 data->irq = irq;

 data->regmap = regmap;

 ret = iio_read_mount_matrix(dev, "mount-matrix",
         &data->orientation);
 if (ret)
  return ret;

 ret = bmc150_accel_chip_init(data);
 if (ret < 0)
  return ret;

 mutex_init(&data->mutex);

 indio_dev->dev.parent = dev;
 indio_dev->channels = data->chip_info->channels;
 indio_dev->num_channels = data->chip_info->num_channels;
 indio_dev->name = name ? name : data->chip_info->name;
 indio_dev->available_scan_masks = bmc150_accel_scan_masks;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &bmc150_accel_info;

 ret = iio_triggered_buffer_setup(indio_dev,
      &iio_pollfunc_store_time,
      bmc150_accel_trigger_handler,
      &bmc150_accel_buffer_ops);
 if (ret < 0) {
  dev_err(dev, "Failed: iio triggered buffer setup\n");
  return ret;
 }

 if (data->irq > 0) {
  ret = devm_request_threaded_irq(
      dev, data->irq,
      bmc150_accel_irq_handler,
      bmc150_accel_irq_thread_handler,
      IRQF_TRIGGER_RISING,
      BMC150_ACCEL_IRQ_NAME,
      indio_dev);
  if (ret)
   goto err_buffer_cleanup;







  ret = regmap_write(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
       BMC150_ACCEL_INT_MODE_LATCH_RESET);
  if (ret < 0) {
   dev_err(dev, "Error writing reg_int_rst_latch\n");
   goto err_buffer_cleanup;
  }

  bmc150_accel_interrupts_setup(indio_dev, data);

  ret = bmc150_accel_triggers_setup(indio_dev, data);
  if (ret)
   goto err_buffer_cleanup;

  if (block_supported) {
   indio_dev->modes |= INDIO_BUFFER_SOFTWARE;
   indio_dev->info = &bmc150_accel_info_fifo;
   iio_buffer_set_attrs(indio_dev->buffer,
          bmc150_accel_fifo_attributes);
  }
 }

 ret = pm_runtime_set_active(dev);
 if (ret)
  goto err_trigger_unregister;

 pm_runtime_enable(dev);
 pm_runtime_set_autosuspend_delay(dev, BMC150_AUTO_SUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(dev);

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(dev, "Unable to register iio device\n");
  goto err_trigger_unregister;
 }

 return 0;

err_trigger_unregister:
 bmc150_accel_unregister_triggers(data, BMC150_ACCEL_TRIGGERS - 1);
err_buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);

 return ret;
}
