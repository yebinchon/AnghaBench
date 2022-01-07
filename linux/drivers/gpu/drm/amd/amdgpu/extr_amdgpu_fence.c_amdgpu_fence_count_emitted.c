
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int sync_seq; int last_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 scalar_t__ READ_ONCE (int ) ;
 int amdgpu_fence_process (struct amdgpu_ring*) ;
 scalar_t__ atomic_read (int *) ;
 int lower_32_bits (int) ;

unsigned amdgpu_fence_count_emitted(struct amdgpu_ring *ring)
{
 uint64_t emitted;




 amdgpu_fence_process(ring);
 emitted = 0x100000000ull;
 emitted -= atomic_read(&ring->fence_drv.last_seq);
 emitted += READ_ONCE(ring->fence_drv.sync_seq);
 return lower_32_bits(emitted);
}
