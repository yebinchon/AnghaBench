
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_reset_method { ____Placeholder_amd_reset_method } amd_reset_method ;


 int AMD_RESET_METHOD_LEGACY ;

__attribute__((used)) static enum amd_reset_method
cik_asic_reset_method(struct amdgpu_device *adev)
{
 return AMD_RESET_METHOD_LEGACY;
}
