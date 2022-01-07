
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int wptr; TYPE_1__* funcs; } ;
struct TYPE_2__ {int align_mask; int (* end_use ) (struct amdgpu_ring*) ;int (* insert_nop ) (struct amdgpu_ring*,int) ;} ;


 int amdgpu_ring_set_wptr (struct amdgpu_ring*) ;
 int mb () ;
 int stub1 (struct amdgpu_ring*,int) ;
 int stub2 (struct amdgpu_ring*) ;

void amdgpu_ring_commit(struct amdgpu_ring *ring)
{
 uint32_t count;


 count = ring->funcs->align_mask + 1 -
  (ring->wptr & ring->funcs->align_mask);
 count %= ring->funcs->align_mask + 1;
 ring->funcs->insert_nop(ring, count);

 mb();
 amdgpu_ring_set_wptr(ring);

 if (ring->funcs->end_use)
  ring->funcs->end_use(ring);
}
