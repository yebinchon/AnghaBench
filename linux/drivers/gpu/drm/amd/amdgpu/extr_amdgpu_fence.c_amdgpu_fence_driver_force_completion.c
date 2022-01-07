
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int amdgpu_fence_process (struct amdgpu_ring*) ;
 int amdgpu_fence_write (struct amdgpu_ring*,int ) ;

void amdgpu_fence_driver_force_completion(struct amdgpu_ring *ring)
{
 amdgpu_fence_write(ring, ring->fence_drv.sync_seq);
 amdgpu_fence_process(ring);
}
