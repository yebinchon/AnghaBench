
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_ring {size_t wptr_offs; TYPE_2__* adev; scalar_t__ use_doorbell; } ;
typedef int atomic64_t ;
struct TYPE_3__ {int * wb; } ;
struct TYPE_4__ {TYPE_1__ wb; } ;


 int BUG () ;
 int atomic64_read (int *) ;

__attribute__((used)) static u64 gfx_v10_0_ring_get_wptr_compute(struct amdgpu_ring *ring)
{
 u64 wptr;


 if (ring->use_doorbell)
  wptr = atomic64_read((atomic64_t *)&ring->adev->wb.wb[ring->wptr_offs]);
 else
  BUG();
 return wptr;
}
