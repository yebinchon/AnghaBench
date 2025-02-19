
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntrig_data {unsigned long sensor_physical_width; unsigned long min_width; unsigned long sensor_logical_width; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct ntrig_data* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t set_min_width(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct ntrig_data *nd = hid_get_drvdata(hdev);

 unsigned long val;

 if (kstrtoul(buf, 0, &val))
  return -EINVAL;

 if (val > nd->sensor_physical_width)
  return -EINVAL;

 nd->min_width = val * nd->sensor_logical_width /
         nd->sensor_physical_width;

 return count;
}
