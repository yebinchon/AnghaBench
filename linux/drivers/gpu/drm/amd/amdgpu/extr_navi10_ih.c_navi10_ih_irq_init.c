
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ih_ring {int gpu_addr; int doorbell_index; scalar_t__ use_doorbell; int wptr_addr; scalar_t__ use_bus_addr; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct TYPE_4__ {int msi_enabled; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {int pdev; TYPE_3__* nbio_funcs; TYPE_2__ firmware; TYPE_1__ irq; } ;
struct TYPE_6__ {int (* ih_doorbell_range ) (struct amdgpu_device*,scalar_t__,int) ;int (* ih_control ) (struct amdgpu_device*) ;} ;


 scalar_t__ AMDGPU_FW_LOAD_DIRECT ;
 int CLIENT18_IS_STORM_CLIENT ;
 int ENABLE ;
 int FLOOD_CNTL_ENABLE ;
 int IH_CHICKEN ;
 int IH_DOORBELL_RPTR ;
 int IH_INT_FLOOD_CNTL ;
 int IH_RB_CNTL ;
 int IH_STORM_CLIENT_LIST_CNTL ;
 int MC_SPACE_GPA_ENABLE ;
 int OFFSET ;
 int OSSSYS ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RPTR_REARM ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int lower_32_bits (int ) ;
 int mmIH_CHICKEN ;
 int mmIH_DOORBELL_RPTR ;
 int mmIH_INT_FLOOD_CNTL ;
 int mmIH_RB_BASE ;
 int mmIH_RB_BASE_HI ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_RPTR ;
 int mmIH_RB_WPTR ;
 int mmIH_RB_WPTR_ADDR_HI ;
 int mmIH_RB_WPTR_ADDR_LO ;
 int mmIH_STORM_CLIENT_LIST_CNTL ;
 int navi10_ih_disable_interrupts (struct amdgpu_device*) ;
 int navi10_ih_enable_interrupts (struct amdgpu_device*) ;
 int navi10_ih_rb_cntl (struct amdgpu_ih_ring*,int) ;
 int pci_set_master (int ) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int navi10_ih_irq_init(struct amdgpu_device *adev)
{
 struct amdgpu_ih_ring *ih = &adev->irq.ih;
 int ret = 0;
 u32 ih_rb_cntl, ih_doorbell_rtpr, ih_chicken;
 u32 tmp;


 navi10_ih_disable_interrupts(adev);

 adev->nbio_funcs->ih_control(adev);


 WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE, ih->gpu_addr >> 8);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_BASE_HI, (ih->gpu_addr >> 40) & 0xff);

 ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL);
 ih_rb_cntl = navi10_ih_rb_cntl(ih, ih_rb_cntl);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, RPTR_REARM,
       !!adev->irq.msi_enabled);

 if (unlikely(adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT)) {
  if (ih->use_bus_addr) {
   ih_chicken = RREG32_SOC15(OSSSYS, 0, mmIH_CHICKEN);
   ih_chicken = REG_SET_FIELD(ih_chicken,
     IH_CHICKEN, MC_SPACE_GPA_ENABLE, 1);
   WREG32_SOC15(OSSSYS, 0, mmIH_CHICKEN, ih_chicken);
  }
 }

 WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);


 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_ADDR_LO,
       lower_32_bits(ih->wptr_addr));
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR_ADDR_HI,
       upper_32_bits(ih->wptr_addr) & 0xFFFF);


 WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR, 0);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR, 0);

 ih_doorbell_rtpr = RREG32_SOC15(OSSSYS, 0, mmIH_DOORBELL_RPTR);
 if (ih->use_doorbell) {
  ih_doorbell_rtpr = REG_SET_FIELD(ih_doorbell_rtpr,
       IH_DOORBELL_RPTR, OFFSET,
       ih->doorbell_index);
  ih_doorbell_rtpr = REG_SET_FIELD(ih_doorbell_rtpr,
       IH_DOORBELL_RPTR, ENABLE, 1);
 } else {
  ih_doorbell_rtpr = REG_SET_FIELD(ih_doorbell_rtpr,
       IH_DOORBELL_RPTR, ENABLE, 0);
 }
 WREG32_SOC15(OSSSYS, 0, mmIH_DOORBELL_RPTR, ih_doorbell_rtpr);

 adev->nbio_funcs->ih_doorbell_range(adev, ih->use_doorbell,
         ih->doorbell_index);

 tmp = RREG32_SOC15(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL);
 tmp = REG_SET_FIELD(tmp, IH_STORM_CLIENT_LIST_CNTL,
       CLIENT18_IS_STORM_CLIENT, 1);
 WREG32_SOC15(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL, tmp);

 tmp = RREG32_SOC15(OSSSYS, 0, mmIH_INT_FLOOD_CNTL);
 tmp = REG_SET_FIELD(tmp, IH_INT_FLOOD_CNTL, FLOOD_CNTL_ENABLE, 1);
 WREG32_SOC15(OSSSYS, 0, mmIH_INT_FLOOD_CNTL, tmp);

 pci_set_master(adev->pdev);


 navi10_ih_enable_interrupts(adev);

 return ret;
}
