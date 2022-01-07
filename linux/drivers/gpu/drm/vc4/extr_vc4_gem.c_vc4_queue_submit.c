
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ww_acquire_ctx {int dummy; } ;
struct vc4_fence {int base; scalar_t__ seqno; struct drm_device* dev; } ;
struct vc4_exec_info {scalar_t__ perfmon; int head; int * fence; scalar_t__ seqno; } ;
struct vc4_dev {int job_lock; int bin_job_list; int dma_fence_context; scalar_t__ emit_seqno; } ;
struct drm_syncobj {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_fence_init (int *,int *,int *,int ,scalar_t__) ;
 int drm_syncobj_replace_fence (struct drm_syncobj*,int *) ;
 struct vc4_fence* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_fence_ops ;
 struct vc4_exec_info* vc4_first_bin_job (struct vc4_dev*) ;
 struct vc4_exec_info* vc4_first_render_job (struct vc4_dev*) ;
 int vc4_queue_hangcheck (struct drm_device*) ;
 int vc4_submit_next_bin_job (struct drm_device*) ;
 int vc4_unlock_bo_reservations (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*) ;
 int vc4_update_bo_seqnos (struct vc4_exec_info*,scalar_t__) ;

__attribute__((used)) static int
vc4_queue_submit(struct drm_device *dev, struct vc4_exec_info *exec,
   struct ww_acquire_ctx *acquire_ctx,
   struct drm_syncobj *out_sync)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_exec_info *renderjob;
 uint64_t seqno;
 unsigned long irqflags;
 struct vc4_fence *fence;

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence)
  return -ENOMEM;
 fence->dev = dev;

 spin_lock_irqsave(&vc4->job_lock, irqflags);

 seqno = ++vc4->emit_seqno;
 exec->seqno = seqno;

 dma_fence_init(&fence->base, &vc4_fence_ops, &vc4->job_lock,
         vc4->dma_fence_context, exec->seqno);
 fence->seqno = exec->seqno;
 exec->fence = &fence->base;

 if (out_sync)
  drm_syncobj_replace_fence(out_sync, exec->fence);

 vc4_update_bo_seqnos(exec, seqno);

 vc4_unlock_bo_reservations(dev, exec, acquire_ctx);

 list_add_tail(&exec->head, &vc4->bin_job_list);






 renderjob = vc4_first_render_job(vc4);
 if (vc4_first_bin_job(vc4) == exec &&
     (!renderjob || renderjob->perfmon == exec->perfmon)) {
  vc4_submit_next_bin_job(dev);
  vc4_queue_hangcheck(dev);
 }

 spin_unlock_irqrestore(&vc4->job_lock, irqflags);

 return 0;
}
