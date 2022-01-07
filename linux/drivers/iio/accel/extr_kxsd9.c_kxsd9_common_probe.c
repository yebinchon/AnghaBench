
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct kxsd9_state {int scale; TYPE_2__* regs; int orientation; struct regmap* map; struct device* dev; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {char const* name; int available_scan_masks; int modes; int * info; TYPE_1__ dev; int num_channels; TYPE_2__* channels; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int supply; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int KXSD9_CTRL_C_FS_2G ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_bulk_get (struct device*,int ,TYPE_2__*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int iio_read_mount_matrix (struct device*,char*,int *) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int ,int ,int *) ;
 int kxsd9_buffer_setup_ops ;
 TYPE_2__* kxsd9_channels ;
 int kxsd9_info ;
 int kxsd9_power_down (struct kxsd9_state*) ;
 int kxsd9_power_up (struct kxsd9_state*) ;
 int kxsd9_reg_iovdd ;
 int kxsd9_reg_vdd ;
 int kxsd9_scan_masks ;
 int kxsd9_trigger_handler ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;

int kxsd9_common_probe(struct device *dev,
         struct regmap *map,
         const char *name)
{
 struct iio_dev *indio_dev;
 struct kxsd9_state *st;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 st->dev = dev;
 st->map = map;

 indio_dev->channels = kxsd9_channels;
 indio_dev->num_channels = ARRAY_SIZE(kxsd9_channels);
 indio_dev->name = name;
 indio_dev->dev.parent = dev;
 indio_dev->info = &kxsd9_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->available_scan_masks = kxsd9_scan_masks;


 ret = iio_read_mount_matrix(dev, "mount-matrix", &st->orientation);
 if (ret)
  return ret;


 st->regs[0].supply = kxsd9_reg_vdd;
 st->regs[1].supply = kxsd9_reg_iovdd;
 ret = devm_regulator_bulk_get(dev,
          ARRAY_SIZE(st->regs),
          st->regs);
 if (ret) {
  dev_err(dev, "Cannot get regulators\n");
  return ret;
 }

 st->scale = KXSD9_CTRL_C_FS_2G;

 kxsd9_power_up(st);

 ret = iio_triggered_buffer_setup(indio_dev,
      iio_pollfunc_store_time,
      kxsd9_trigger_handler,
      &kxsd9_buffer_setup_ops);
 if (ret) {
  dev_err(dev, "triggered buffer setup failed\n");
  goto err_power_down;
 }

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_cleanup_buffer;

 dev_set_drvdata(dev, indio_dev);


 pm_runtime_get_noresume(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);





 pm_runtime_set_autosuspend_delay(dev, 2000);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_put(dev);

 return 0;

err_cleanup_buffer:
 iio_triggered_buffer_cleanup(indio_dev);
err_power_down:
 kxsd9_power_down(st);

 return ret;
}
