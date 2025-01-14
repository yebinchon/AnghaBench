
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras {scalar_t__ features; } ;
struct amdgpu_device {int dummy; } ;


 int WARN (scalar_t__,char*) ;
 int amdgpu_ras_disable_all_features (struct amdgpu_device*,int) ;
 int amdgpu_ras_fs_fini (struct amdgpu_device*) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int amdgpu_ras_interrupt_remove_all (struct amdgpu_device*) ;
 int amdgpu_ras_set_context (struct amdgpu_device*,int *) ;
 int kfree (struct amdgpu_ras*) ;

int amdgpu_ras_fini(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);

 if (!con)
  return 0;

 amdgpu_ras_fs_fini(adev);
 amdgpu_ras_interrupt_remove_all(adev);

 WARN(con->features, "Feature mask is not cleared");

 if (con->features)
  amdgpu_ras_disable_all_features(adev, 1);

 amdgpu_ras_set_context(adev, ((void*)0));
 kfree(con);

 return 0;
}
