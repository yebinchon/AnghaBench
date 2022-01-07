
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int me; scalar_t__ pipe; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;



 int AMDGPU_IRQ_STATE_DISABLE ;
 int BUG () ;
 int CPC_INT_CNTL ;
 int CP_ME2_PIPE0_INT_CNTL ;
 int GC ;
 int GENERIC2_INT_ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmCPC_INT_CNTL ;
 int mmCP_ME1_PIPE0_INT_CNTL ;
 int mmCP_ME2_PIPE0_INT_CNTL ;

__attribute__((used)) static int gfx_v10_0_kiq_set_interrupt_state(struct amdgpu_device *adev,
          struct amdgpu_irq_src *src,
          unsigned int type,
          enum amdgpu_interrupt_state state)
{
 uint32_t tmp, target;
 struct amdgpu_ring *ring = &(adev->gfx.kiq.ring);

 if (ring->me == 1)
  target = SOC15_REG_OFFSET(GC, 0, mmCP_ME1_PIPE0_INT_CNTL);
 else
  target = SOC15_REG_OFFSET(GC, 0, mmCP_ME2_PIPE0_INT_CNTL);
 target += ring->pipe;

 switch (type) {
 case 128:
  if (state == AMDGPU_IRQ_STATE_DISABLE) {
   tmp = RREG32_SOC15(GC, 0, mmCPC_INT_CNTL);
   tmp = REG_SET_FIELD(tmp, CPC_INT_CNTL,
         GENERIC2_INT_ENABLE, 0);
   WREG32_SOC15(GC, 0, mmCPC_INT_CNTL, tmp);

   tmp = RREG32(target);
   tmp = REG_SET_FIELD(tmp, CP_ME2_PIPE0_INT_CNTL,
         GENERIC2_INT_ENABLE, 0);
   WREG32(target, tmp);
  } else {
   tmp = RREG32_SOC15(GC, 0, mmCPC_INT_CNTL);
   tmp = REG_SET_FIELD(tmp, CPC_INT_CNTL,
         GENERIC2_INT_ENABLE, 1);
   WREG32_SOC15(GC, 0, mmCPC_INT_CNTL, tmp);

   tmp = RREG32(target);
   tmp = REG_SET_FIELD(tmp, CP_ME2_PIPE0_INT_CNTL,
         GENERIC2_INT_ENABLE, 1);
   WREG32(target, tmp);
  }
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
