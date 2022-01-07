
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int AUTO_CTXSW_ENABLE ;
 unsigned int REG_SET_FIELD (unsigned int,int ,int ,int) ;
 unsigned int RREG32_SDMA (int,int ) ;
 int SDMA0_CNTL ;
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT_MASK ;
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT__SHIFT ;
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE_MASK ;
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE__SHIFT ;
 int WARN_ONCE (int,char*,unsigned int) ;
 int WREG32_SDMA (int,int ,unsigned int) ;
 int amdgpu_sdma_phase_quantum ;
 int mmSDMA0_CNTL ;
 int mmSDMA0_PHASE0_QUANTUM ;
 int mmSDMA0_PHASE1_QUANTUM ;
 int mmSDMA0_PHASE2_QUANTUM ;

__attribute__((used)) static void sdma_v4_0_ctx_switch_enable(struct amdgpu_device *adev, bool enable)
{
 u32 f32_cntl, phase_quantum = 0;
 int i;

 if (amdgpu_sdma_phase_quantum) {
  unsigned value = amdgpu_sdma_phase_quantum;
  unsigned unit = 0;

  while (value > (SDMA0_PHASE0_QUANTUM__VALUE_MASK >>
    SDMA0_PHASE0_QUANTUM__VALUE__SHIFT)) {
   value = (value + 1) >> 1;
   unit++;
  }
  if (unit > (SDMA0_PHASE0_QUANTUM__UNIT_MASK >>
       SDMA0_PHASE0_QUANTUM__UNIT__SHIFT)) {
   value = (SDMA0_PHASE0_QUANTUM__VALUE_MASK >>
     SDMA0_PHASE0_QUANTUM__VALUE__SHIFT);
   unit = (SDMA0_PHASE0_QUANTUM__UNIT_MASK >>
    SDMA0_PHASE0_QUANTUM__UNIT__SHIFT);
   WARN_ONCE(1,
   "clamping sdma_phase_quantum to %uK clock cycles\n",
      value << unit);
  }
  phase_quantum =
   value << SDMA0_PHASE0_QUANTUM__VALUE__SHIFT |
   unit << SDMA0_PHASE0_QUANTUM__UNIT__SHIFT;
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  f32_cntl = RREG32_SDMA(i, mmSDMA0_CNTL);
  f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_CNTL,
    AUTO_CTXSW_ENABLE, enable ? 1 : 0);
  if (enable && amdgpu_sdma_phase_quantum) {
   WREG32_SDMA(i, mmSDMA0_PHASE0_QUANTUM, phase_quantum);
   WREG32_SDMA(i, mmSDMA0_PHASE1_QUANTUM, phase_quantum);
   WREG32_SDMA(i, mmSDMA0_PHASE2_QUANTUM, phase_quantum);
  }
  WREG32_SDMA(i, mmSDMA0_CNTL, f32_cntl);
 }

}
