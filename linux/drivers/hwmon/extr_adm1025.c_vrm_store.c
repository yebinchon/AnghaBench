
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1025_data {unsigned long vrm; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct adm1025_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t vrm_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct adm1025_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 if (val > 255)
  return -EINVAL;

 data->vrm = val;
 return count;
}
