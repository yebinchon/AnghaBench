
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


 int intel_th_output_activate (struct intel_th_device*) ;
 int intel_th_output_deactivate (struct intel_th_device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct intel_th_device* to_intel_th_device (struct device*) ;

__attribute__((used)) static ssize_t active_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t size)
{
 struct intel_th_device *thdev = to_intel_th_device(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 if (!!val != thdev->output.active) {
  if (val)
   ret = intel_th_output_activate(thdev);
  else
   intel_th_output_deactivate(thdev);
 }

 return ret ? ret : size;
}
