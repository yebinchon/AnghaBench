
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int emit_wreg; } ;


 int NBIO ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15_NO_KIQ (int ,int ,int ,int ) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,int ,int ) ;
 int mmBIF_BX_PF_HDP_MEM_COHERENCY_FLUSH_CNTL ;

__attribute__((used)) static void nbio_v2_3_hdp_flush(struct amdgpu_device *adev,
    struct amdgpu_ring *ring)
{
 if (!ring || !ring->funcs->emit_wreg)
  WREG32_SOC15_NO_KIQ(NBIO, 0, mmBIF_BX_PF_HDP_MEM_COHERENCY_FLUSH_CNTL, 0);
 else
  amdgpu_ring_emit_wreg(ring, SOC15_REG_OFFSET(
   NBIO, 0, mmBIF_BX_PF_HDP_MEM_COHERENCY_FLUSH_CNTL), 0);
}
