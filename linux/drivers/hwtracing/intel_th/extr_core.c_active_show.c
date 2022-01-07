
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; } ;
struct intel_th_device {TYPE_1__ output; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct intel_th_device* to_intel_th_device (struct device*) ;

__attribute__((used)) static ssize_t active_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct intel_th_device *thdev = to_intel_th_device(dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", thdev->output.active);
}
