
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct msm_ringbuffer {int submits; scalar_t__ seqno; } ;
struct msm_gpu {TYPE_3__* funcs; TYPE_1__* pdev; struct drm_device* dev; } ;
struct msm_gem_submit {int nr_bos; int fence; TYPE_2__* bos; int aspace; int node; scalar_t__ seqno; struct msm_ringbuffer* ring; } ;
struct msm_gem_object {int base; struct msm_gpu* gpu; } ;
struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; int rd; } ;
struct drm_device {int struct_mutex; struct msm_drm_private* dev_private; } ;
struct TYPE_6__ {int (* submit ) (struct msm_gpu*,struct msm_gem_submit*,struct msm_file_private*) ;} ;
struct TYPE_5__ {int flags; struct msm_gem_object* obj; } ;
struct TYPE_4__ {int dev; } ;


 int MSM_SUBMIT_BO_READ ;
 int MSM_SUBMIT_BO_WRITE ;
 int WARN_ON (int) ;
 int drm_gem_object_get (int *) ;
 int hangcheck_timer_reset (struct msm_gpu*) ;
 scalar_t__ is_active (struct msm_gem_object*) ;
 int list_add_tail (int *,int *) ;
 int msm_gem_get_and_pin_iova (int *,int ,int *) ;
 int msm_gem_move_to_active (int *,struct msm_gpu*,int,int ) ;
 int msm_gpu_hw_init (struct msm_gpu*) ;
 int msm_rd_dump_submit (int ,struct msm_gem_submit*,int *) ;
 int mutex_is_locked (int *) ;
 int pm_runtime_get_sync (int *) ;
 int stub1 (struct msm_gpu*,struct msm_gem_submit*,struct msm_file_private*) ;
 int update_sw_cntrs (struct msm_gpu*) ;

void msm_gpu_submit(struct msm_gpu *gpu, struct msm_gem_submit *submit,
  struct msm_file_private *ctx)
{
 struct drm_device *dev = gpu->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_ringbuffer *ring = submit->ring;
 int i;

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));

 pm_runtime_get_sync(&gpu->pdev->dev);

 msm_gpu_hw_init(gpu);

 submit->seqno = ++ring->seqno;

 list_add_tail(&submit->node, &ring->submits);

 msm_rd_dump_submit(priv->rd, submit, ((void*)0));

 update_sw_cntrs(gpu);

 for (i = 0; i < submit->nr_bos; i++) {
  struct msm_gem_object *msm_obj = submit->bos[i].obj;
  uint64_t iova;




  WARN_ON(is_active(msm_obj) && (msm_obj->gpu != gpu));


  drm_gem_object_get(&msm_obj->base);
  msm_gem_get_and_pin_iova(&msm_obj->base, submit->aspace, &iova);

  if (submit->bos[i].flags & MSM_SUBMIT_BO_WRITE)
   msm_gem_move_to_active(&msm_obj->base, gpu, 1, submit->fence);
  else if (submit->bos[i].flags & MSM_SUBMIT_BO_READ)
   msm_gem_move_to_active(&msm_obj->base, gpu, 0, submit->fence);
 }

 gpu->funcs->submit(gpu, submit, ctx);
 priv->lastctx = ctx;

 hangcheck_timer_reset(gpu);
}
