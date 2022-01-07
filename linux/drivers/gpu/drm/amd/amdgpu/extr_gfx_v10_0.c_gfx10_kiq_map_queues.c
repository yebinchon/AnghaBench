
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct amdgpu_ring {int wptr_offs; int me; int doorbell_index; int pipe; int queue; TYPE_2__* funcs; int mqd_obj; struct amdgpu_device* adev; } ;
struct TYPE_3__ {scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int PACKET3 (int ,int) ;
 int PACKET3_MAP_QUEUES ;
 int PACKET3_MAP_QUEUES_ALLOC_FORMAT (int ) ;
 int PACKET3_MAP_QUEUES_DOORBELL_OFFSET (int ) ;
 int PACKET3_MAP_QUEUES_ENGINE_SEL (int) ;
 int PACKET3_MAP_QUEUES_ME (int) ;
 int PACKET3_MAP_QUEUES_NUM_QUEUES (int) ;
 int PACKET3_MAP_QUEUES_PIPE (int ) ;
 int PACKET3_MAP_QUEUES_QUEUE (int ) ;
 int PACKET3_MAP_QUEUES_QUEUE_SEL (int ) ;
 int PACKET3_MAP_QUEUES_QUEUE_TYPE (int ) ;
 int PACKET3_MAP_QUEUES_VMID (int ) ;
 scalar_t__ amdgpu_bo_gpu_offset (int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void gfx10_kiq_map_queues(struct amdgpu_ring *kiq_ring,
     struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = kiq_ring->adev;
 uint64_t mqd_addr = amdgpu_bo_gpu_offset(ring->mqd_obj);
 uint64_t wptr_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
 uint32_t eng_sel = ring->funcs->type == AMDGPU_RING_TYPE_GFX ? 4 : 0;

 amdgpu_ring_write(kiq_ring, PACKET3(PACKET3_MAP_QUEUES, 5));

 amdgpu_ring_write(kiq_ring,
     PACKET3_MAP_QUEUES_QUEUE_SEL(0) |
     PACKET3_MAP_QUEUES_VMID(0) |
     PACKET3_MAP_QUEUES_QUEUE(ring->queue) |
     PACKET3_MAP_QUEUES_PIPE(ring->pipe) |
     PACKET3_MAP_QUEUES_ME((ring->me == 1 ? 0 : 1)) |
     PACKET3_MAP_QUEUES_QUEUE_TYPE(0) |
     PACKET3_MAP_QUEUES_ALLOC_FORMAT(0) |
     PACKET3_MAP_QUEUES_ENGINE_SEL(eng_sel) |
     PACKET3_MAP_QUEUES_NUM_QUEUES(1));
 amdgpu_ring_write(kiq_ring, PACKET3_MAP_QUEUES_DOORBELL_OFFSET(ring->doorbell_index));
 amdgpu_ring_write(kiq_ring, lower_32_bits(mqd_addr));
 amdgpu_ring_write(kiq_ring, upper_32_bits(mqd_addr));
 amdgpu_ring_write(kiq_ring, lower_32_bits(wptr_addr));
 amdgpu_ring_write(kiq_ring, upper_32_bits(wptr_addr));
}
