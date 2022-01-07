
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct adt7x10_ops {int dummy; } ;
struct adt7x10_data {char const* name; int oldconfig; int config; int hwmon_dev; int update_lock; struct adt7x10_ops const* ops; } ;


 int ADT7X10_CONFIG ;
 int ADT7X10_CT_POLARITY ;
 int ADT7X10_EVENT_MODE ;
 int ADT7X10_FULL ;
 int ADT7X10_INT_POLARITY ;
 int ADT7X10_MODE_MASK ;
 int ADT7X10_RESOLUTION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adt7x10_fill_cache (struct device*) ;
 int adt7x10_group ;
 int adt7x10_irq_handler ;
 int adt7x10_read_byte (struct device*,int ) ;
 int adt7x10_write_byte (struct device*,int ,int) ;
 int dev_attr_name ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct adt7x10_data*) ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 struct adt7x10_data* devm_kzalloc (struct device*,int,int ) ;
 int hwmon_device_register (struct device*) ;
 int hwmon_device_unregister (int ) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,int,int ,struct device*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int adt7x10_probe(struct device *dev, const char *name, int irq,
    const struct adt7x10_ops *ops)
{
 struct adt7x10_data *data;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->ops = ops;
 data->name = name;

 dev_set_drvdata(dev, data);
 mutex_init(&data->update_lock);


 ret = adt7x10_read_byte(dev, ADT7X10_CONFIG);
 if (ret < 0) {
  dev_dbg(dev, "Can't read config? %d\n", ret);
  return ret;
 }
 data->oldconfig = ret;




 data->config = data->oldconfig;
 data->config &= ~(ADT7X10_MODE_MASK | ADT7X10_CT_POLARITY |
   ADT7X10_INT_POLARITY);
 data->config |= ADT7X10_FULL | ADT7X10_RESOLUTION | ADT7X10_EVENT_MODE;

 if (data->config != data->oldconfig) {
  ret = adt7x10_write_byte(dev, ADT7X10_CONFIG, data->config);
  if (ret)
   return ret;
 }
 dev_dbg(dev, "Config %02x\n", data->config);

 ret = adt7x10_fill_cache(dev);
 if (ret)
  goto exit_restore;


 ret = sysfs_create_group(&dev->kobj, &adt7x10_group);
 if (ret)
  goto exit_restore;






 if (name) {
  ret = device_create_file(dev, &dev_attr_name);
  if (ret)
   goto exit_remove;
 }

 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  ret = PTR_ERR(data->hwmon_dev);
  goto exit_remove_name;
 }

 if (irq > 0) {
  ret = request_threaded_irq(irq, ((void*)0), adt7x10_irq_handler,
    IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
    dev_name(dev), dev);
  if (ret)
   goto exit_hwmon_device_unregister;
 }

 return 0;

exit_hwmon_device_unregister:
 hwmon_device_unregister(data->hwmon_dev);
exit_remove_name:
 if (name)
  device_remove_file(dev, &dev_attr_name);
exit_remove:
 sysfs_remove_group(&dev->kobj, &adt7x10_group);
exit_restore:
 adt7x10_write_byte(dev, ADT7X10_CONFIG, data->oldconfig);
 return ret;
}
