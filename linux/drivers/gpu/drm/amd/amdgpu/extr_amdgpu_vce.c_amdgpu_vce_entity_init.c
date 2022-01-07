
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_sched_rq {int dummy; } ;
struct TYPE_3__ {struct drm_sched_rq* sched_rq; } ;
struct amdgpu_ring {TYPE_1__ sched; } ;
struct TYPE_4__ {int entity; struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_2__ vce; } ;


 int DRM_ERROR (char*) ;
 size_t DRM_SCHED_PRIORITY_NORMAL ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,int,int *) ;

int amdgpu_vce_entity_init(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 struct drm_sched_rq *rq;
 int r;

 ring = &adev->vce.ring[0];
 rq = &ring->sched.sched_rq[DRM_SCHED_PRIORITY_NORMAL];
 r = drm_sched_entity_init(&adev->vce.entity, &rq, 1, ((void*)0));
 if (r != 0) {
  DRM_ERROR("Failed setting up VCE run queue.\n");
  return r;
 }

 return 0;
}
