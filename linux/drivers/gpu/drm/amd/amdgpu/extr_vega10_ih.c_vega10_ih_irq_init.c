
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ih_ring {int gpu_addr; scalar_t__ ring_size; int wptr_addr; scalar_t__ use_bus_addr; } ;
struct TYPE_6__ {struct amdgpu_ih_ring ih2; struct amdgpu_ih_ring ih1; int msi_enabled; struct amdgpu_ih_ring ih; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {scalar_t__ asic_type; int pdev; int psp; TYPE_3__ irq; TYPE_2__ firmware; TYPE_1__* nbio_funcs; } ;
struct TYPE_4__ {int (* ih_control ) (struct amdgpu_device*) ;} ;


 scalar_t__ AMDGPU_FW_LOAD_DIRECT ;
 scalar_t__ CHIP_ARCTURUS ;
 scalar_t__ CHIP_RENOIR ;
 int CLIENT18_IS_STORM_CLIENT ;
 int DRM_ERROR (char*) ;
 int ETIMEDOUT ;
 int FLOOD_CNTL_ENABLE ;
 int IH_CHICKEN ;
 int IH_INT_FLOOD_CNTL ;
 int IH_RB_CNTL ;
 int IH_STORM_CLIENT_LIST_CNTL ;
 int MC_SPACE_FBPA_ENABLE ;
 int MC_SPACE_GPA_ENABLE ;
 int OSSSYS ;
 int PSP_REG_IH_RB_CNTL ;
 int PSP_REG_IH_RB_CNTL_RING1 ;
 int PSP_REG_IH_RB_CNTL_RING2 ;
 int RB_FULL_DRAIN_ENABLE ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RPTR_REARM ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WPTR_OVERFLOW_ENABLE ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int lower_32_bits (int ) ;
 int mmIH_CHICKEN ;
 int mmIH_DOORBELL_RPTR ;
 int mmIH_DOORBELL_RPTR_RING1 ;
 int mmIH_DOORBELL_RPTR_RING2 ;
 int mmIH_INT_FLOOD_CNTL ;
 int mmIH_RB_BASE ;
 int mmIH_RB_BASE_HI ;
 int mmIH_RB_BASE_HI_RING1 ;
 int mmIH_RB_BASE_HI_RING2 ;
 int mmIH_RB_BASE_RING1 ;
 int mmIH_RB_BASE_RING2 ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_CNTL_RING1 ;
 int mmIH_RB_CNTL_RING2 ;
 int mmIH_RB_RPTR ;
 int mmIH_RB_RPTR_RING1 ;
 int mmIH_RB_RPTR_RING2 ;
 int mmIH_RB_WPTR ;
 int mmIH_RB_WPTR_ADDR_HI ;
 int mmIH_RB_WPTR_ADDR_LO ;
 int mmIH_RB_WPTR_RING1 ;
 int mmIH_RB_WPTR_RING2 ;
 int mmIH_STORM_CLIENT_LIST_CNTL ;
 int pci_set_master (int ) ;
 scalar_t__ psp_reg_program (int *,int ,int) ;
 int stub1 (struct amdgpu_device*) ;
 int upper_32_bits (int ) ;
 int vega10_ih_disable_interrupts (struct amdgpu_device*) ;
 int vega10_ih_doorbell_rptr (struct amdgpu_ih_ring*) ;
 int vega10_ih_enable_interrupts (struct amdgpu_device*) ;
 int vega10_ih_rb_cntl (struct amdgpu_ih_ring*,int) ;

__attribute__((used)) static int vega10_ih_irq_init(struct amdgpu_device *adev)
{
 struct amdgpu_ih_ring *ih;
 u32 ih_rb_cntl, ih_chicken;
 int ret = 0;
 u32 tmp;


 vega10_ih_disable_interrupts(adev);

 adev->nbio_funcs->ih_control(adev);

 ih = &adev->irq.ih;

 WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE, ih->gpu_addr >> 8);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE_HI, (ih->gpu_addr >> 40) & 0xff);

 ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL);
 ih_chicken = RREG32_SOC15(OSSSYS, 0, mmIH_CHICKEN);
 ih_rb_cntl = vega10_ih_rb_cntl(ih, ih_rb_cntl);
 if (adev->irq.ih.use_bus_addr) {
  ih_chicken = REG_SET_FIELD(ih_chicken, IH_CHICKEN, MC_SPACE_GPA_ENABLE, 1);
 } else {
  ih_chicken = REG_SET_FIELD(ih_chicken, IH_CHICKEN, MC_SPACE_FBPA_ENABLE, 1);
 }
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, RPTR_REARM,
       !!adev->irq.msi_enabled);

 if (amdgpu_sriov_vf(adev)) {
  if (psp_reg_program(&adev->psp, PSP_REG_IH_RB_CNTL, ih_rb_cntl)) {
   DRM_ERROR("PSP program IH_RB_CNTL failed!\n");
   return -ETIMEDOUT;
  }
 } else {
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);
 }

 if ((adev->asic_type == CHIP_ARCTURUS
  && adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT)
  || adev->asic_type == CHIP_RENOIR)
  WREG32_SOC15(OSSSYS, 0, mmIH_CHICKEN, ih_chicken);


 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_ADDR_LO,
       lower_32_bits(ih->wptr_addr));
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_ADDR_HI,
       upper_32_bits(ih->wptr_addr) & 0xFFFF);


 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR, 0);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR, 0);

 WREG32_SOC15(OSSSYS, 0, mmIH_DOORBELL_RPTR,
       vega10_ih_doorbell_rptr(ih));

 ih = &adev->irq.ih1;
 if (ih->ring_size) {
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE_RING1, ih->gpu_addr >> 8);
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE_HI_RING1,
        (ih->gpu_addr >> 40) & 0xff);

  ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING1);
  ih_rb_cntl = vega10_ih_rb_cntl(ih, ih_rb_cntl);
  ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL,
        WPTR_OVERFLOW_ENABLE, 0);
  ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL,
        RB_FULL_DRAIN_ENABLE, 1);
  if (amdgpu_sriov_vf(adev)) {
   if (psp_reg_program(&adev->psp, PSP_REG_IH_RB_CNTL_RING1,
      ih_rb_cntl)) {
    DRM_ERROR("program IH_RB_CNTL_RING1 failed!\n");
    return -ETIMEDOUT;
   }
  } else {
   WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING1, ih_rb_cntl);
  }


  WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_RING1, 0);
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR_RING1, 0);

  WREG32_SOC15(OSSSYS, 0, mmIH_DOORBELL_RPTR_RING1,
        vega10_ih_doorbell_rptr(ih));
 }

 ih = &adev->irq.ih2;
 if (ih->ring_size) {
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE_RING2, ih->gpu_addr >> 8);
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE_HI_RING2,
        (ih->gpu_addr >> 40) & 0xff);

  ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING2);
  ih_rb_cntl = vega10_ih_rb_cntl(ih, ih_rb_cntl);

  if (amdgpu_sriov_vf(adev)) {
   if (psp_reg_program(&adev->psp, PSP_REG_IH_RB_CNTL_RING2,
      ih_rb_cntl)) {
    DRM_ERROR("program IH_RB_CNTL_RING2 failed!\n");
    return -ETIMEDOUT;
   }
  } else {
   WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL_RING2, ih_rb_cntl);
  }


  WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_RING2, 0);
  WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR_RING2, 0);

  WREG32_SOC15(OSSSYS, 0, mmIH_DOORBELL_RPTR_RING2,
        vega10_ih_doorbell_rptr(ih));
 }

 tmp = RREG32_SOC15(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL);
 tmp = REG_SET_FIELD(tmp, IH_STORM_CLIENT_LIST_CNTL,
       CLIENT18_IS_STORM_CLIENT, 1);
 WREG32_SOC15(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL, tmp);

 tmp = RREG32_SOC15(OSSSYS, 0, mmIH_INT_FLOOD_CNTL);
 tmp = REG_SET_FIELD(tmp, IH_INT_FLOOD_CNTL, FLOOD_CNTL_ENABLE, 1);
 WREG32_SOC15(OSSSYS, 0, mmIH_INT_FLOOD_CNTL, tmp);

 pci_set_master(adev->pdev);


 vega10_ih_enable_interrupts(adev);

 return ret;
}
