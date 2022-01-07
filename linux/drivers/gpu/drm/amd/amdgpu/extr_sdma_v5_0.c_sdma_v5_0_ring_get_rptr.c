
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct amdgpu_ring {size_t rptr_offs; TYPE_2__* adev; } ;
struct TYPE_3__ {int * wb; } ;
struct TYPE_4__ {TYPE_1__ wb; } ;


 int DRM_DEBUG (char*,int) ;

__attribute__((used)) static uint64_t sdma_v5_0_ring_get_rptr(struct amdgpu_ring *ring)
{
 u64 *rptr;


 rptr = ((u64 *)&ring->adev->wb.wb[ring->rptr_offs]);

 DRM_DEBUG("rptr before shift == 0x%016llx\n", *rptr);
 return ((*rptr) >> 2);
}
