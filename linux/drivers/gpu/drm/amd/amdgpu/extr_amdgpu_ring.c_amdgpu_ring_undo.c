
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; int wptr_old; int wptr; } ;
struct TYPE_2__ {int (* end_use ) (struct amdgpu_ring*) ;} ;


 int stub1 (struct amdgpu_ring*) ;

void amdgpu_ring_undo(struct amdgpu_ring *ring)
{
 ring->wptr = ring->wptr_old;

 if (ring->funcs->end_use)
  ring->funcs->end_use(ring);
}
