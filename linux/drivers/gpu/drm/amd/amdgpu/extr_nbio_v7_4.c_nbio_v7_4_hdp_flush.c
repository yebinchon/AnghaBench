
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_4__ {int reg_offset; } ;
struct amdgpu_device {TYPE_2__ rmmio_remap; } ;
struct TYPE_3__ {int emit_wreg; } ;


 int KFD_MMIO_REMAP_HDP_MEM_FLUSH_CNTL ;
 int WREG32_NO_KIQ (int,int ) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,int,int ) ;

__attribute__((used)) static void nbio_v7_4_hdp_flush(struct amdgpu_device *adev,
    struct amdgpu_ring *ring)
{
 if (!ring || !ring->funcs->emit_wreg)
  WREG32_NO_KIQ((adev->rmmio_remap.reg_offset + KFD_MMIO_REMAP_HDP_MEM_FLUSH_CNTL) >> 2, 0);
 else
  amdgpu_ring_emit_wreg(ring, (adev->rmmio_remap.reg_offset + KFD_MMIO_REMAP_HDP_MEM_FLUSH_CNTL) >> 2, 0);
}
