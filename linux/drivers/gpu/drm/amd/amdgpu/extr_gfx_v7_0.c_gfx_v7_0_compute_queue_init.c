
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cik_mqd {int dummy; } ;
struct amdgpu_ring {int mqd_obj; int queue; int pipe; int me; } ;
struct TYPE_2__ {struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {int srbm_mutex; int dev; TYPE_1__ gfx; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,int,int ,int ,int *,int *,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 int cik_srbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int gfx_v7_0_mqd_commit (struct amdgpu_device*,struct cik_mqd*) ;
 int gfx_v7_0_mqd_deactivate (struct amdgpu_device*) ;
 int gfx_v7_0_mqd_init (struct amdgpu_device*,struct cik_mqd*,int ,struct amdgpu_ring*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gfx_v7_0_compute_queue_init(struct amdgpu_device *adev, int ring_id)
{
 int r;
 u64 mqd_gpu_addr;
 struct cik_mqd *mqd;
 struct amdgpu_ring *ring = &adev->gfx.compute_ring[ring_id];

 r = amdgpu_bo_create_reserved(adev, sizeof(struct cik_mqd), PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_GTT, &ring->mqd_obj,
          &mqd_gpu_addr, (void **)&mqd);
 if (r) {
  dev_warn(adev->dev, "(%d) create MQD bo failed\n", r);
  return r;
 }

 mutex_lock(&adev->srbm_mutex);
 cik_srbm_select(adev, ring->me, ring->pipe, ring->queue, 0);

 gfx_v7_0_mqd_init(adev, mqd, mqd_gpu_addr, ring);
 gfx_v7_0_mqd_deactivate(adev);
 gfx_v7_0_mqd_commit(adev, mqd);

 cik_srbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);

 amdgpu_bo_kunmap(ring->mqd_obj);
 amdgpu_bo_unreserve(ring->mqd_obj);
 return 0;
}
