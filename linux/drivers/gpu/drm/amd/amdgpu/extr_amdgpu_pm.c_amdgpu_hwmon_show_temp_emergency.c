
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int max_hotspot_emergency_temp; int max_edge_emergency_temp; int max_mem_emergency_temp; } ;
struct TYPE_7__ {TYPE_1__ thermal; } ;
struct TYPE_6__ {TYPE_3__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;
typedef int ssize_t ;
struct TYPE_8__ {int index; } ;


 int EINVAL ;
 int PAGE_SIZE ;


 int PP_TEMP_MAX ;

 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_4__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_show_temp_emergency(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 int channel = to_sensor_dev_attr(attr)->index;
 int temp = 0;

 if (channel >= PP_TEMP_MAX)
  return -EINVAL;

 switch (channel) {
 case 129:
  temp = adev->pm.dpm.thermal.max_hotspot_emergency_temp;
  break;
 case 130:
  temp = adev->pm.dpm.thermal.max_edge_emergency_temp;
  break;
 case 128:
  temp = adev->pm.dpm.thermal.max_mem_emergency_temp;
  break;
 }

 return snprintf(buf, PAGE_SIZE, "%d\n", temp);
}
