
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v9_mqd_allocation {int dynamic_cu_mask; int dynamic_rb_mask; } ;
struct v9_mqd {int dummy; } ;
struct amdgpu_ring {scalar_t__ wptr; int queue; int pipe; int me; struct v9_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_3__ {struct v9_mqd** mqd_backup; } ;
struct TYPE_4__ {TYPE_1__ mec; struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_2__ gfx; scalar_t__ in_gpu_reset; int srbm_mutex; int in_suspend; } ;


 int amdgpu_ring_clear_ring (struct amdgpu_ring*) ;
 int gfx_v9_0_mqd_init (struct amdgpu_ring*) ;
 int memcpy (struct v9_mqd*,struct v9_mqd*,int) ;
 int memset (void*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int soc15_grbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int gfx_v9_0_kcq_init_queue(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 struct v9_mqd *mqd = ring->mqd_ptr;
 int mqd_idx = ring - &adev->gfx.compute_ring[0];

 if (!adev->in_gpu_reset && !adev->in_suspend) {
  memset((void *)mqd, 0, sizeof(struct v9_mqd_allocation));
  ((struct v9_mqd_allocation *)mqd)->dynamic_cu_mask = 0xFFFFFFFF;
  ((struct v9_mqd_allocation *)mqd)->dynamic_rb_mask = 0xFFFFFFFF;
  mutex_lock(&adev->srbm_mutex);
  soc15_grbm_select(adev, ring->me, ring->pipe, ring->queue, 0);
  gfx_v9_0_mqd_init(ring);
  soc15_grbm_select(adev, 0, 0, 0, 0);
  mutex_unlock(&adev->srbm_mutex);

  if (adev->gfx.mec.mqd_backup[mqd_idx])
   memcpy(adev->gfx.mec.mqd_backup[mqd_idx], mqd, sizeof(struct v9_mqd_allocation));
 } else if (adev->in_gpu_reset) {

  if (adev->gfx.mec.mqd_backup[mqd_idx])
   memcpy(mqd, adev->gfx.mec.mqd_backup[mqd_idx], sizeof(struct v9_mqd_allocation));


  ring->wptr = 0;
  amdgpu_ring_clear_ring(ring);
 } else {
  amdgpu_ring_clear_ring(ring);
 }

 return 0;
}
