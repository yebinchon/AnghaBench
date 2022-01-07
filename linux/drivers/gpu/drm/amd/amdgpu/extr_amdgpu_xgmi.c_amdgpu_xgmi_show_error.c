
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {TYPE_1__* df_funcs; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_fica ) (struct amdgpu_device*,int ) ;int (* set_fica ) (struct amdgpu_device*,int ,int ,int ) ;} ;


 int AMDGPU_XGMI_SET_FICAA (int) ;
 int PAGE_SIZE ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int pr_err (char*) ;
 int snprintf (char*,int ,char*,unsigned int) ;
 int stub1 (struct amdgpu_device*,int ) ;
 int stub2 (struct amdgpu_device*,int ) ;
 int stub3 (struct amdgpu_device*,int ,int ,int ) ;

__attribute__((used)) static ssize_t amdgpu_xgmi_show_error(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 uint32_t ficaa_pie_ctl_in, ficaa_pie_status_in;
 uint64_t fica_out;
 unsigned int error_count = 0;

 ficaa_pie_ctl_in = AMDGPU_XGMI_SET_FICAA(0x200);
 ficaa_pie_status_in = AMDGPU_XGMI_SET_FICAA(0x208);

 fica_out = adev->df_funcs->get_fica(adev, ficaa_pie_ctl_in);
 if (fica_out != 0x1f)
  pr_err("xGMI error counters not enabled!\n");

 fica_out = adev->df_funcs->get_fica(adev, ficaa_pie_status_in);

 if ((fica_out & 0xffff) == 2)
  error_count = ((fica_out >> 62) & 0x1) + (fica_out >> 63);

 adev->df_funcs->set_fica(adev, ficaa_pie_status_in, 0, 0);

 return snprintf(buf, PAGE_SIZE, "%d\n", error_count);
}
