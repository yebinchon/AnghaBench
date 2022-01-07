
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td043mtea1_panel {int vmirror; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct td043mtea1_panel* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int td043mtea1_write_mirror (struct td043mtea1_panel*) ;

__attribute__((used)) static ssize_t vmirror_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct td043mtea1_panel *lcd = dev_get_drvdata(dev);
 int val;
 int ret;

 ret = kstrtoint(buf, 0, &val);
 if (ret < 0)
  return ret;

 lcd->vmirror = !!val;

 ret = td043mtea1_write_mirror(lcd);
 if (ret < 0)
  return ret;

 return count;
}
