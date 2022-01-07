
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_sysfs_trig {int work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct iio_sysfs_trig* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int irq_work_queue (int *) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static ssize_t iio_sysfs_trigger_poll(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct iio_trigger *trig = to_iio_trigger(dev);
 struct iio_sysfs_trig *sysfs_trig = iio_trigger_get_drvdata(trig);

 irq_work_queue(&sysfs_trig->work);

 return count;
}
