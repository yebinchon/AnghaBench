
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int * man; } ;
struct TYPE_4__ {TYPE_1__ bdev; } ;
struct amdgpu_device {TYPE_2__ mman; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 size_t TTM_PL_VRAM ;
 int amdgpu_vram_mgr_vis_usage (int *) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t amdgpu_mem_info_vis_vram_used_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 return snprintf(buf, PAGE_SIZE, "%llu\n",
  amdgpu_vram_mgr_vis_usage(&adev->mman.bdev.man[TTM_PL_VRAM]));
}
