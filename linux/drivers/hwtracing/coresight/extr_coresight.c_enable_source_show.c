
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct coresight_device {int enable; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static ssize_t enable_source_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct coresight_device *csdev = to_coresight_device(dev);

 return scnprintf(buf, PAGE_SIZE, "%u\n", csdev->enable);
}
