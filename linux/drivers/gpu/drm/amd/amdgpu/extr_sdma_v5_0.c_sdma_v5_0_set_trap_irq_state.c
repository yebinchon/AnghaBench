
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_ENABLE ;
 unsigned int AMDGPU_SDMA_IRQ_INSTANCE0 ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int SDMA0_CNTL ;
 int TRAP_ENABLE ;
 int WREG32 (int ,int ) ;
 int mmSDMA0_CNTL ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,int,int ) ;

__attribute__((used)) static int sdma_v5_0_set_trap_irq_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     unsigned type,
     enum amdgpu_interrupt_state state)
{
 u32 sdma_cntl;

 u32 reg_offset = (type == AMDGPU_SDMA_IRQ_INSTANCE0) ?
  sdma_v5_0_get_reg_offset(adev, 0, mmSDMA0_CNTL) :
  sdma_v5_0_get_reg_offset(adev, 1, mmSDMA0_CNTL);

 sdma_cntl = RREG32(reg_offset);
 sdma_cntl = REG_SET_FIELD(sdma_cntl, SDMA0_CNTL, TRAP_ENABLE,
         state == AMDGPU_IRQ_STATE_ENABLE ? 1 : 0);
 WREG32(reg_offset, sdma_cntl);

 return 0;
}
