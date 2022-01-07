
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fallback_timer; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 scalar_t__ AMDGPU_FENCE_JIFFIES_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void amdgpu_fence_schedule_fallback(struct amdgpu_ring *ring)
{
 mod_timer(&ring->fence_drv.fallback_timer,
    jiffies + AMDGPU_FENCE_JIFFIES_TIMEOUT);
}
