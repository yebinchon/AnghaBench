
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v10_gfx_mqd {int dummy; } ;
struct amdgpu_ring {int queue; int pipe; int me; scalar_t__ wptr; struct v10_gfx_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_3__ {struct v10_gfx_mqd** mqd_backup; } ;
struct TYPE_4__ {TYPE_1__ me; } ;
struct amdgpu_device {int srbm_mutex; TYPE_2__ gfx; scalar_t__ in_gpu_reset; int in_suspend; } ;


 size_t AMDGPU_MAX_GFX_RINGS ;
 int amdgpu_ring_clear_ring (struct amdgpu_ring*) ;
 int gfx_v10_0_gfx_mqd_init (struct amdgpu_ring*) ;
 int gfx_v10_0_gfx_queue_init_register (struct amdgpu_ring*) ;
 int memcpy (struct v10_gfx_mqd*,struct v10_gfx_mqd*,int) ;
 int memset (void*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_grbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int gfx_v10_0_gfx_init_queue(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 struct v10_gfx_mqd *mqd = ring->mqd_ptr;

 if (!adev->in_gpu_reset && !adev->in_suspend) {
  memset((void *)mqd, 0, sizeof(*mqd));
  mutex_lock(&adev->srbm_mutex);
  nv_grbm_select(adev, ring->me, ring->pipe, ring->queue, 0);
  gfx_v10_0_gfx_mqd_init(ring);



  nv_grbm_select(adev, 0, 0, 0, 0);
  mutex_unlock(&adev->srbm_mutex);
  if (adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS])
   memcpy(adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS], mqd, sizeof(*mqd));
 } else if (adev->in_gpu_reset) {

  if (adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS])
   memcpy(mqd, adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS], sizeof(*mqd));

  ring->wptr = 0;
  amdgpu_ring_clear_ring(ring);







 } else {
  amdgpu_ring_clear_ring(ring);
 }

 return 0;
}
