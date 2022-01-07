
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int enabled; scalar_t__ rptr; scalar_t__ ring_size; } ;
struct TYPE_6__ {int enabled; scalar_t__ rptr; scalar_t__ ring_size; } ;
struct TYPE_5__ {int enabled; scalar_t__ rptr; } ;
struct TYPE_8__ {TYPE_3__ ih2; TYPE_2__ ih1; TYPE_1__ ih; } ;
struct amdgpu_device {TYPE_4__ irq; int psp; } ;


 int DRM_ERROR (char*) ;
 int ENABLE_INTR ;
 int IH_RB_CNTL ;
 int IH_RB_CNTL_RING1 ;
 int IH_RB_CNTL_RING2 ;
 int OSSSYS ;
 int PSP_REG_IH_RB_CNTL ;
 int PSP_REG_IH_RB_CNTL_RING1 ;
 int PSP_REG_IH_RB_CNTL_RING2 ;
 int RB_ENABLE ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int ) ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,scalar_t__) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_CNTL_RING1 ;
 int mmIH_RB_CNTL_RING2 ;
 int mmIH_RB_RPTR ;
 int mmIH_RB_RPTR_RING1 ;
 int mmIH_RB_RPTR_RING2 ;
 int mmIH_RB_WPTR ;
 int mmIH_RB_WPTR_RING1 ;
 int mmIH_RB_WPTR_RING2 ;
 scalar_t__ psp_reg_program (int *,int ,scalar_t__) ;

__attribute__((used)) static void vega10_ih_disable_interrupts(struct amdgpu_device *adev)
{
 u32 ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL);

 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, RB_ENABLE, 0);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, ENABLE_INTR, 0);
 if (amdgpu_sriov_vf(adev)) {
  if (psp_reg_program(&adev->psp, PSP_REG_IH_RB_CNTL, ih_rb_cntl)) {
   DRM_ERROR("PSP program IH_RB_CNTL failed!\n");
   return;
  }
 } else {
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);
 }


 WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR, 0);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR, 0);
 adev->irq.ih.enabled = 0;
 adev->irq.ih.rptr = 0;

 if (adev->irq.ih1.ring_size) {
  ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING1);
  ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL_RING1,
        RB_ENABLE, 0);
  if (amdgpu_sriov_vf(adev)) {
   if (psp_reg_program(&adev->psp, PSP_REG_IH_RB_CNTL_RING1,
      ih_rb_cntl)) {
    DRM_ERROR("program IH_RB_CNTL_RING1 failed!\n");
    return;
   }
  } else {
   WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING1, ih_rb_cntl);
  }

  WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR_RING1, 0);
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_RING1, 0);
  adev->irq.ih1.enabled = 0;
  adev->irq.ih1.rptr = 0;
 }

 if (adev->irq.ih2.ring_size) {
  ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING2);
  ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL_RING2,
        RB_ENABLE, 0);
  if (amdgpu_sriov_vf(adev)) {
   if (psp_reg_program(&adev->psp, PSP_REG_IH_RB_CNTL_RING2,
      ih_rb_cntl)) {
    DRM_ERROR("program IH_RB_CNTL_RING2 failed!\n");
    return;
   }
  } else {
   WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING2, ih_rb_cntl);
  }


  WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR_RING2, 0);
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_RING2, 0);
  adev->irq.ih2.enabled = 0;
  adev->irq.ih2.rptr = 0;
 }
}
