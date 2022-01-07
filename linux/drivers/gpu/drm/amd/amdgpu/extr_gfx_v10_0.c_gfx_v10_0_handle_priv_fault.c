
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct amdgpu_ring {int me; int pipe; int queue; int sched; } ;
struct amdgpu_iv_entry {int ring_id; } ;
struct TYPE_2__ {int num_gfx_rings; int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int BUG () ;
 int drm_sched_fault (int *) ;

__attribute__((used)) static void gfx_v10_0_handle_priv_fault(struct amdgpu_device *adev,
     struct amdgpu_iv_entry *entry)
{
 u8 me_id, pipe_id, queue_id;
 struct amdgpu_ring *ring;
 int i;

 me_id = (entry->ring_id & 0x0c) >> 2;
 pipe_id = (entry->ring_id & 0x03) >> 0;
 queue_id = (entry->ring_id & 0x70) >> 4;

 switch (me_id) {
 case 0:
  for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
   ring = &adev->gfx.gfx_ring[i];

   if (ring->me == me_id && ring->pipe == pipe_id)
    drm_sched_fault(&ring->sched);
  }
  break;
 case 1:
 case 2:
  for (i = 0; i < adev->gfx.num_compute_rings; i++) {
   ring = &adev->gfx.compute_ring[i];
   if (ring->me == me_id && ring->pipe == pipe_id &&
       ring->queue == queue_id)
    drm_sched_fault(&ring->sched);
  }
  break;
 default:
  BUG();
 }
}
