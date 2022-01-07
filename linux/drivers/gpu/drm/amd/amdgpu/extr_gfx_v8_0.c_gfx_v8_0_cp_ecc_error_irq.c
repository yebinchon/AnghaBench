
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_ERROR (char*) ;

__attribute__((used)) static int gfx_v8_0_cp_ecc_error_irq(struct amdgpu_device *adev,
         struct amdgpu_irq_src *source,
         struct amdgpu_iv_entry *entry)
{
 DRM_ERROR("CP EDC/ECC error detected.");
 return 0;
}
