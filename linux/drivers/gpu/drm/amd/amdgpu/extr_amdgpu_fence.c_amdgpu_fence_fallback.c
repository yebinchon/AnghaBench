
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct amdgpu_ring {int name; } ;
struct TYPE_2__ {int fallback_timer; } ;


 int DRM_WARN (char*,int ) ;
 scalar_t__ amdgpu_fence_process (struct amdgpu_ring*) ;
 TYPE_1__ fence_drv ;
 struct amdgpu_ring* from_timer (int ,struct timer_list*,int ) ;
 struct amdgpu_ring* ring ;

__attribute__((used)) static void amdgpu_fence_fallback(struct timer_list *t)
{
 struct amdgpu_ring *ring = from_timer(ring, t,
           fence_drv.fallback_timer);

 if (amdgpu_fence_process(ring))
  DRM_WARN("Fence fallback timer expired on ring %s\n", ring->name);
}
