
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_ttm_late_init (struct amdgpu_device*) ;

int amdgpu_bo_late_init(struct amdgpu_device *adev)
{
 amdgpu_ttm_late_init(adev);

 return 0;
}
