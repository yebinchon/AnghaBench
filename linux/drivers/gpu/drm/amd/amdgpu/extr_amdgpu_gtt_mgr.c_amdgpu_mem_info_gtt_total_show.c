
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* man; } ;
struct TYPE_6__ {TYPE_2__ bdev; } ;
struct amdgpu_device {TYPE_3__ mman; } ;
typedef int ssize_t ;
struct TYPE_4__ {int size; } ;


 int PAGE_SIZE ;
 size_t TTM_PL_TT ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t amdgpu_mem_info_gtt_total_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (adev->mman.bdev.man[TTM_PL_TT].size) * PAGE_SIZE);
}
