
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sq_irq; int cp_ecc_error_irq; int priv_inst_irq; int priv_reg_irq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int DRM_ERROR (char*,int) ;
 int amdgpu_irq_get (struct amdgpu_device*,int *,int ) ;
 int gfx_v8_0_do_edc_gpr_workarounds (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v8_0_late_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;

 r = amdgpu_irq_get(adev, &adev->gfx.priv_reg_irq, 0);
 if (r)
  return r;

 r = amdgpu_irq_get(adev, &adev->gfx.priv_inst_irq, 0);
 if (r)
  return r;


 r = gfx_v8_0_do_edc_gpr_workarounds(adev);
 if (r)
  return r;

 r = amdgpu_irq_get(adev, &adev->gfx.cp_ecc_error_irq, 0);
 if (r) {
  DRM_ERROR("amdgpu_irq_get() failed to get IRQ for EDC, r: %d.\n", r);
  return r;
 }

 r = amdgpu_irq_get(adev, &adev->gfx.sq_irq, 0);
 if (r) {
  DRM_ERROR(
   "amdgpu_irq_get() failed to get IRQ for SQ, r: %d.\n",
   r);
  return r;
 }

 return 0;
}
