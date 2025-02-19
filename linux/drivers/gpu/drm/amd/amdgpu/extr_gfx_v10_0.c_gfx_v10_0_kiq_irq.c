
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_iv_entry {int ring_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int DRM_DEBUG (char*,int,int,int) ;
 int amdgpu_fence_process (struct amdgpu_ring*) ;

__attribute__((used)) static int gfx_v10_0_kiq_irq(struct amdgpu_device *adev,
        struct amdgpu_irq_src *source,
        struct amdgpu_iv_entry *entry)
{
 u8 me_id, pipe_id, queue_id;
 struct amdgpu_ring *ring = &(adev->gfx.kiq.ring);

 me_id = (entry->ring_id & 0x0c) >> 2;
 pipe_id = (entry->ring_id & 0x03) >> 0;
 queue_id = (entry->ring_id & 0x70) >> 4;
 DRM_DEBUG("IH: CPC GENERIC2_INT, me:%d, pipe:%d, queue:%d\n",
     me_id, pipe_id, queue_id);

 amdgpu_fence_process(ring);
 return 0;
}
