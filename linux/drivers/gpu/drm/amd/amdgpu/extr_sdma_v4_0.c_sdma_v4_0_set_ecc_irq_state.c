
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_ENABLE ;
 int ECC_INT_ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SDMA (unsigned int,int ) ;
 int SDMA0_EDC_CONFIG ;
 int WREG32_SDMA (unsigned int,int ,int ) ;
 int mmSDMA0_EDC_CONFIG ;

__attribute__((used)) static int sdma_v4_0_set_ecc_irq_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     unsigned type,
     enum amdgpu_interrupt_state state)
{
 u32 sdma_edc_config;

 sdma_edc_config = RREG32_SDMA(type, mmSDMA0_EDC_CONFIG);
 sdma_edc_config = REG_SET_FIELD(sdma_edc_config, SDMA0_EDC_CONFIG, ECC_INT_ENABLE,
         state == AMDGPU_IRQ_STATE_ENABLE ? 1 : 0);
 WREG32_SDMA(type, mmSDMA0_EDC_CONFIG, sdma_edc_config);

 return 0;
}
