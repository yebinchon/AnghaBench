
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
 unsigned int RREG32 (scalar_t__) ;
 int SDMA0_CNTL ;
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT_MASK ;
 unsigned int SDMA0_PHASE0_QUANTUM__UNIT__SHIFT ;
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE_MASK ;
 unsigned int SDMA0_PHASE0_QUANTUM__VALUE__SHIFT ;
 int WARN_ONCE (int,char*,unsigned int) ;
 int WREG32 (scalar_t__,unsigned int) ;
 int amdgpu_sdma_phase_quantum ;
 scalar_t__ mmSDMA0_CNTL ;
 scalar_t__ mmSDMA0_PHASE0_QUANTUM ;
 scalar_t__ mmSDMA0_PHASE1_QUANTUM ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void cik_ctx_switch_enable(struct amdgpu_device *adev, bool enable)
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
  f32_cntl = RREG32(mmSDMA0_CNTL + sdma_offsets[i]);
  if (enable) {
   f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_CNTL,
     AUTO_CTXSW_ENABLE, 1);
   if (amdgpu_sdma_phase_quantum) {
    WREG32(mmSDMA0_PHASE0_QUANTUM + sdma_offsets[i],
           phase_quantum);
    WREG32(mmSDMA0_PHASE1_QUANTUM + sdma_offsets[i],
           phase_quantum);
   }
  } else {
   f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_CNTL,
     AUTO_CTXSW_ENABLE, 0);
  }

  WREG32(mmSDMA0_CNTL + sdma_offsets[i], f32_cntl);
 }
}
