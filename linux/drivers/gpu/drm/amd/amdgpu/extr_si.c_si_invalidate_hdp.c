
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int emit_wreg; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,int ,int) ;
 int mmHDP_DEBUG0 ;

__attribute__((used)) static void si_invalidate_hdp(struct amdgpu_device *adev,
         struct amdgpu_ring *ring)
{
 if (!ring || !ring->funcs->emit_wreg) {
  WREG32(mmHDP_DEBUG0, 1);
  RREG32(mmHDP_DEBUG0);
 } else {
  amdgpu_ring_emit_wreg(ring, mmHDP_DEBUG0, 1);
 }
}
