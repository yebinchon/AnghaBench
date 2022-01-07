
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_PX ;

bool amdgpu_device_is_px(struct drm_device *dev)
{
 struct amdgpu_device *adev = dev->dev_private;

 if (adev->flags & AMD_IS_PX)
  return 1;
 return 0;
}
