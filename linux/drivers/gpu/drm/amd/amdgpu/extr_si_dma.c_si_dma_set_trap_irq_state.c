
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;






 scalar_t__ DMA0_REGISTER_OFFSET ;
 scalar_t__ DMA1_REGISTER_OFFSET ;
 scalar_t__ DMA_CNTL ;
 int RREG32 (scalar_t__) ;
 int TRAP_ENABLE ;
 int WREG32 (scalar_t__,int ) ;

__attribute__((used)) static int si_dma_set_trap_irq_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *src,
     unsigned type,
     enum amdgpu_interrupt_state state)
{
 u32 sdma_cntl;

 switch (type) {
 case 129:
  switch (state) {
  case 131:
   sdma_cntl = RREG32(DMA_CNTL + DMA0_REGISTER_OFFSET);
   sdma_cntl &= ~TRAP_ENABLE;
   WREG32(DMA_CNTL + DMA0_REGISTER_OFFSET, sdma_cntl);
   break;
  case 130:
   sdma_cntl = RREG32(DMA_CNTL + DMA0_REGISTER_OFFSET);
   sdma_cntl |= TRAP_ENABLE;
   WREG32(DMA_CNTL + DMA0_REGISTER_OFFSET, sdma_cntl);
   break;
  default:
   break;
  }
  break;
 case 128:
  switch (state) {
  case 131:
   sdma_cntl = RREG32(DMA_CNTL + DMA1_REGISTER_OFFSET);
   sdma_cntl &= ~TRAP_ENABLE;
   WREG32(DMA_CNTL + DMA1_REGISTER_OFFSET, sdma_cntl);
   break;
  case 130:
   sdma_cntl = RREG32(DMA_CNTL + DMA1_REGISTER_OFFSET);
   sdma_cntl |= TRAP_ENABLE;
   WREG32(DMA_CNTL + DMA1_REGISTER_OFFSET, sdma_cntl);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }
 return 0;
}
