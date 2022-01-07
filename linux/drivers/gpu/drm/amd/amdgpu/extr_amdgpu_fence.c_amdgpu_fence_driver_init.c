
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dev; } ;


 scalar_t__ amdgpu_debugfs_fence_init (struct amdgpu_device*) ;
 int dev_err (int ,char*) ;

int amdgpu_fence_driver_init(struct amdgpu_device *adev)
{
 if (amdgpu_debugfs_fence_init(adev))
  dev_err(adev->dev, "fence debugfs file creation failed\n");

 return 0;
}
