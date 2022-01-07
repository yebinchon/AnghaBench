
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initialized; unsigned int num_fences_mask; int fences; int lock; int fallback_timer; int last_seq; scalar_t__ sync_seq; scalar_t__ gpu_addr; int * cpu_addr; } ;
struct amdgpu_ring {int name; int sched; struct amdgpu_device* adev; TYPE_2__* funcs; TYPE_1__ fence_drv; } ;
struct amdgpu_device {long gfx_timeout; long compute_timeout; long sdma_timeout; long video_timeout; } ;
struct TYPE_4__ {int type; } ;




 int AMDGPU_RING_TYPE_KIQ ;

 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_fence_fallback ;
 int amdgpu_job_hang_limit ;
 int amdgpu_sched_ops ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int atomic_set (int *,int ) ;
 int drm_sched_init (int *,int *,unsigned int,int ,long,int ) ;
 int kcalloc (unsigned int,int,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int amdgpu_fence_driver_init_ring(struct amdgpu_ring *ring,
      unsigned num_hw_submission)
{
 struct amdgpu_device *adev = ring->adev;
 long timeout;
 int r;

 if (!adev)
  return -EINVAL;


 if ((num_hw_submission & (num_hw_submission - 1)) != 0)
  return -EINVAL;

 ring->fence_drv.cpu_addr = ((void*)0);
 ring->fence_drv.gpu_addr = 0;
 ring->fence_drv.sync_seq = 0;
 atomic_set(&ring->fence_drv.last_seq, 0);
 ring->fence_drv.initialized = 0;

 timer_setup(&ring->fence_drv.fallback_timer, amdgpu_fence_fallback, 0);

 ring->fence_drv.num_fences_mask = num_hw_submission * 2 - 1;
 spin_lock_init(&ring->fence_drv.lock);
 ring->fence_drv.fences = kcalloc(num_hw_submission * 2, sizeof(void *),
      GFP_KERNEL);
 if (!ring->fence_drv.fences)
  return -ENOMEM;


 if (ring->funcs->type != AMDGPU_RING_TYPE_KIQ) {
  switch (ring->funcs->type) {
  case 129:
   timeout = adev->gfx_timeout;
   break;
  case 130:
   if (!amdgpu_sriov_vf(ring->adev))
    timeout = adev->compute_timeout;
   else
    timeout = adev->gfx_timeout;
   break;
  case 128:
   timeout = adev->sdma_timeout;
   break;
  default:
   timeout = adev->video_timeout;
   break;
  }

  r = drm_sched_init(&ring->sched, &amdgpu_sched_ops,
       num_hw_submission, amdgpu_job_hang_limit,
       timeout, ring->name);
  if (r) {
   DRM_ERROR("Failed to create scheduler on ring %s.\n",
      ring->name);
   return r;
  }
 }

 return 0;
}
