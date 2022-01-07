
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
struct amdgpu_device {struct smu_context smu; } ;
typedef enum amd_reset_method { ____Placeholder_amd_reset_method } amd_reset_method ;


 int AMD_RESET_METHOD_BACO ;
 int AMD_RESET_METHOD_MODE1 ;
 scalar_t__ smu_baco_is_support (struct smu_context*) ;

__attribute__((used)) static enum amd_reset_method
nv_asic_reset_method(struct amdgpu_device *adev)
{
 struct smu_context *smu = &adev->smu;

 if (smu_baco_is_support(smu))
  return AMD_RESET_METHOD_BACO;
 else
  return AMD_RESET_METHOD_MODE1;
}
