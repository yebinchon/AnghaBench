
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_ras_disable_all_features (struct amdgpu_device*,int ) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int amdgpu_ras_recovery_fini (struct amdgpu_device*) ;

int amdgpu_ras_pre_fini(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);

 if (!con)
  return 0;


 amdgpu_ras_disable_all_features(adev, 0);
 amdgpu_ras_recovery_fini(adev);
 return 0;
}
