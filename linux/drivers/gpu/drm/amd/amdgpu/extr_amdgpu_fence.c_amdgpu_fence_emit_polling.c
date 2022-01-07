
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int gpu_addr; scalar_t__ sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int EINVAL ;
 int amdgpu_ring_emit_fence (struct amdgpu_ring*,int ,scalar_t__,int ) ;

int amdgpu_fence_emit_polling(struct amdgpu_ring *ring, uint32_t *s)
{
 uint32_t seq;

 if (!s)
  return -EINVAL;

 seq = ++ring->fence_drv.sync_seq;
 amdgpu_ring_emit_fence(ring, ring->fence_drv.gpu_addr,
          seq, 0);

 *s = seq;

 return 0;
}
