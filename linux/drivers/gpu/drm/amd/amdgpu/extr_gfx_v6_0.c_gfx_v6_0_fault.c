
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int sched; } ;
struct amdgpu_iv_entry {int ring_id; } ;
struct TYPE_2__ {struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int drm_sched_fault (int *) ;

__attribute__((used)) static void gfx_v6_0_fault(struct amdgpu_device *adev,
      struct amdgpu_iv_entry *entry)
{
 struct amdgpu_ring *ring;

 switch (entry->ring_id) {
 case 0:
  ring = &adev->gfx.gfx_ring[0];
  break;
 case 1:
 case 2:
  ring = &adev->gfx.compute_ring[entry->ring_id - 1];
  break;
 default:
  return;
 }
 drm_sched_fault(&ring->sched);
}
