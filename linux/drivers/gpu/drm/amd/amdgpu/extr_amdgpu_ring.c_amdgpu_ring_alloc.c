
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {unsigned int max_dw; unsigned int count_dw; TYPE_1__* funcs; int wptr; int wptr_old; } ;
struct TYPE_2__ {unsigned int align_mask; int (* begin_use ) (struct amdgpu_ring*) ;} ;


 int ENOMEM ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int stub1 (struct amdgpu_ring*) ;

int amdgpu_ring_alloc(struct amdgpu_ring *ring, unsigned ndw)
{


 ndw = (ndw + ring->funcs->align_mask) & ~ring->funcs->align_mask;




 if (WARN_ON_ONCE(ndw > ring->max_dw))
  return -ENOMEM;

 ring->count_dw = ndw;
 ring->wptr_old = ring->wptr;

 if (ring->funcs->begin_use)
  ring->funcs->begin_use(ring);

 return 0;
}
