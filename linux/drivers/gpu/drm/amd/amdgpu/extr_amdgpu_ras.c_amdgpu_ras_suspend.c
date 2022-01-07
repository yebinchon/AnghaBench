
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras {scalar_t__ features; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_ras_disable_all_features (struct amdgpu_device*,int) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;

void amdgpu_ras_suspend(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);

 if (!con)
  return;

 amdgpu_ras_disable_all_features(adev, 0);

 if (con->features)
  amdgpu_ras_disable_all_features(adev, 1);
}
