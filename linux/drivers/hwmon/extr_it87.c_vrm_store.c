
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {unsigned long vrm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t vrm_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct it87_data *data = dev_get_drvdata(dev);
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;

 data->vrm = val;

 return count;
}
