
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int ready; } ;
struct amdgpu_ring {TYPE_2__ sched; } ;
struct TYPE_5__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_7__ {unsigned int num_instances; TYPE_4__* instance; } ;
struct amdgpu_device {TYPE_1__ mman; TYPE_3__ sdma; } ;
struct TYPE_8__ {struct amdgpu_ring ring; } ;


 scalar_t__ DMA_RB_CNTL ;
 int DMA_RB_ENABLE ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 int amdgpu_ttm_set_buffer_funcs_status (struct amdgpu_device*,int) ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void si_dma_stop(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 u32 rb_cntl;
 unsigned i;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;

  rb_cntl = RREG32(DMA_RB_CNTL + sdma_offsets[i]);
  rb_cntl &= ~DMA_RB_ENABLE;
  WREG32(DMA_RB_CNTL + sdma_offsets[i], rb_cntl);

  if (adev->mman.buffer_funcs_ring == ring)
   amdgpu_ttm_set_buffer_funcs_status(adev, 0);
  ring->sched.ready = 0;
 }
}
