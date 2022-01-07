
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char** SCH5627_IN_LABELS ;
 int snprintf (char*,int ,char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_label_show(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 return snprintf(buf, PAGE_SIZE, "%s\n",
   SCH5627_IN_LABELS[attr->index]);
}
