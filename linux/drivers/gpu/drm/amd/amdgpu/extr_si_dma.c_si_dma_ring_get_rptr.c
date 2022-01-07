
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {int rptr_offs; TYPE_2__* adev; } ;
struct TYPE_3__ {int * wb; } ;
struct TYPE_4__ {TYPE_1__ wb; } ;



__attribute__((used)) static uint64_t si_dma_ring_get_rptr(struct amdgpu_ring *ring)
{
 return ring->adev->wb.wb[ring->rptr_offs>>2];
}
