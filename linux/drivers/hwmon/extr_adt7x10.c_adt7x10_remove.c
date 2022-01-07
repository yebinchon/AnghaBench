
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct adt7x10_data {scalar_t__ oldconfig; scalar_t__ config; scalar_t__ name; int hwmon_dev; } ;


 int ADT7X10_CONFIG ;
 int adt7x10_group ;
 int adt7x10_write_byte (struct device*,int ,scalar_t__) ;
 int dev_attr_name ;
 struct adt7x10_data* dev_get_drvdata (struct device*) ;
 int device_remove_file (struct device*,int *) ;
 int free_irq (int,struct device*) ;
 int hwmon_device_unregister (int ) ;
 int sysfs_remove_group (int *,int *) ;

int adt7x10_remove(struct device *dev, int irq)
{
 struct adt7x10_data *data = dev_get_drvdata(dev);

 if (irq > 0)
  free_irq(irq, dev);

 hwmon_device_unregister(data->hwmon_dev);
 if (data->name)
  device_remove_file(dev, &dev_attr_name);
 sysfs_remove_group(&dev->kobj, &adt7x10_group);
 if (data->oldconfig != data->config)
  adt7x10_write_byte(dev, ADT7X10_CONFIG, data->oldconfig);
 return 0;
}
