
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int emit_wreg; } ;


 int HDP ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15_NO_KIQ (int ,int ,int ,int) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,int ,int) ;
 int mmHDP_READ_CACHE_INVALIDATE ;

__attribute__((used)) static void soc15_invalidate_hdp(struct amdgpu_device *adev,
     struct amdgpu_ring *ring)
{
 if (!ring || !ring->funcs->emit_wreg)
  WREG32_SOC15_NO_KIQ(HDP, 0, mmHDP_READ_CACHE_INVALIDATE, 1);
 else
  amdgpu_ring_emit_wreg(ring, SOC15_REG_OFFSET(
   HDP, 0, mmHDP_READ_CACHE_INVALIDATE), 1);
}
