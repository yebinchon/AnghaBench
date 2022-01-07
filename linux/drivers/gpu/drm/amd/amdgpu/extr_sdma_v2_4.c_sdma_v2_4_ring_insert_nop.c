
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_sdma_instance {scalar_t__ burst_nop; } ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {int nop; } ;


 int SDMA_PKT_NOP_HEADER_COUNT (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 struct amdgpu_sdma_instance* amdgpu_sdma_get_instance_from_ring (struct amdgpu_ring*) ;

__attribute__((used)) static void sdma_v2_4_ring_insert_nop(struct amdgpu_ring *ring, uint32_t count)
{
 struct amdgpu_sdma_instance *sdma = amdgpu_sdma_get_instance_from_ring(ring);
 int i;

 for (i = 0; i < count; i++)
  if (sdma && sdma->burst_nop && (i == 0))
   amdgpu_ring_write(ring, ring->funcs->nop |
    SDMA_PKT_NOP_HEADER_COUNT(count - 1));
  else
   amdgpu_ring_write(ring, ring->funcs->nop);
}
