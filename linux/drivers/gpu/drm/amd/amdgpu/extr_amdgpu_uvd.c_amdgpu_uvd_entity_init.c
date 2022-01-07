
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_sched_rq {int dummy; } ;
struct TYPE_5__ {struct drm_sched_rq* sched_rq; } ;
struct amdgpu_ring {TYPE_2__ sched; } ;
struct TYPE_6__ {int entity; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_3__ uvd; } ;
struct TYPE_4__ {struct amdgpu_ring ring; } ;


 int DRM_ERROR (char*) ;
 size_t DRM_SCHED_PRIORITY_NORMAL ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,int,int *) ;

int amdgpu_uvd_entity_init(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 struct drm_sched_rq *rq;
 int r;

 ring = &adev->uvd.inst[0].ring;
 rq = &ring->sched.sched_rq[DRM_SCHED_PRIORITY_NORMAL];
 r = drm_sched_entity_init(&adev->uvd.entity, &rq, 1, ((void*)0));
 if (r) {
  DRM_ERROR("Failed setting up UVD kernel entity.\n");
  return r;
 }

 return 0;
}
