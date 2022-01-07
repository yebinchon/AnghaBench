
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t u32 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;


 scalar_t__ DMA_RB_WPTR ;
 int RREG32 (scalar_t__) ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static uint64_t si_dma_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 u32 me = (ring == &adev->sdma.instance[0].ring) ? 0 : 1;

 return (RREG32(DMA_RB_WPTR + sdma_offsets[me]) & 0x3fffc) >> 2;
}
