
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_uvd_inst; int num_enc_rings; } ;
struct amdgpu_device {int flags; TYPE_1__ uvd; } ;


 int AMD_IS_APU ;
 int CC_HARVEST_FUSES__UVD_DISABLE_MASK ;
 int ENOENT ;
 int RREG32_SMC (int ) ;
 int ixCC_HARVEST_FUSES ;
 scalar_t__ uvd_v6_0_enc_support (struct amdgpu_device*) ;
 int uvd_v6_0_set_enc_ring_funcs (struct amdgpu_device*) ;
 int uvd_v6_0_set_irq_funcs (struct amdgpu_device*) ;
 int uvd_v6_0_set_ring_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v6_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 adev->uvd.num_uvd_inst = 1;

 if (!(adev->flags & AMD_IS_APU) &&
     (RREG32_SMC(ixCC_HARVEST_FUSES) & CC_HARVEST_FUSES__UVD_DISABLE_MASK))
  return -ENOENT;

 uvd_v6_0_set_ring_funcs(adev);

 if (uvd_v6_0_enc_support(adev)) {
  adev->uvd.num_enc_rings = 2;
  uvd_v6_0_set_enc_ring_funcs(adev);
 }

 uvd_v6_0_set_irq_funcs(adev);

 return 0;
}
