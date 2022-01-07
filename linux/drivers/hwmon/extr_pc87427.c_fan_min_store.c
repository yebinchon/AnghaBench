
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pc87427_data {int* address; int lock; int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int BANK_FM (int) ;
 size_t EINVAL ;
 int FAN_STATUS_MONEN ;
 size_t LD_FAN ;
 scalar_t__ PC87427_REG_BANK ;
 scalar_t__ PC87427_REG_FAN_MIN ;
 scalar_t__ PC87427_REG_FAN_STATUS ;
 struct pc87427_data* dev_get_drvdata (struct device*) ;
 int fan_to_reg (unsigned long) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_store(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct pc87427_data *data = dev_get_drvdata(dev);
 int nr = to_sensor_dev_attr(devattr)->index;
 unsigned long val;
 int iobase = data->address[LD_FAN];

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->lock);
 outb(BANK_FM(nr), iobase + PC87427_REG_BANK);





 outb(0, iobase + PC87427_REG_FAN_STATUS);
 data->fan_min[nr] = fan_to_reg(val);
 outw(data->fan_min[nr], iobase + PC87427_REG_FAN_MIN);
 outb(FAN_STATUS_MONEN, iobase + PC87427_REG_FAN_STATUS);
 mutex_unlock(&data->lock);

 return count;
}
