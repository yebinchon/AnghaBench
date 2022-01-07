
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_ENABLE ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int VCE ;
 int VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmVCE_SYS_INT_EN ;

__attribute__((used)) static int vce_v4_0_set_interrupt_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     unsigned type,
     enum amdgpu_interrupt_state state)
{
 uint32_t val = 0;

 if (!amdgpu_sriov_vf(adev)) {
  if (state == AMDGPU_IRQ_STATE_ENABLE)
   val |= VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK;

  WREG32_P(SOC15_REG_OFFSET(VCE, 0, mmVCE_SYS_INT_EN), val,
    ~VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK);
 }
 return 0;
}
