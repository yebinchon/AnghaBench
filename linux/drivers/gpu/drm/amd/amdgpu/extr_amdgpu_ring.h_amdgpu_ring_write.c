
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {scalar_t__ count_dw; size_t buf_mask; int ptr_mask; int wptr; int * ring; } ;


 int DRM_ERROR (char*) ;

__attribute__((used)) static inline void amdgpu_ring_write(struct amdgpu_ring *ring, uint32_t v)
{
 if (ring->count_dw <= 0)
  DRM_ERROR("amdgpu: writing more dwords to the ring than expected!\n");
 ring->ring[ring->wptr++ & ring->buf_mask] = v;
 ring->wptr &= ring->ptr_mask;
 ring->count_dw--;
}
