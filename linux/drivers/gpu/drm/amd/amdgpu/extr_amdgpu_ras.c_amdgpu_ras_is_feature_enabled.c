
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_common_if {int block; } ;
struct amdgpu_ras {int features; } ;
struct amdgpu_device {int dummy; } ;


 int BIT (int ) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_ras_is_feature_enabled(struct amdgpu_device *adev,
  struct ras_common_if *head)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);

 return con->features & BIT(head->block);
}
