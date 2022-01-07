
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_context {int dev; struct exynos_drm_ipp_task* task; int id; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef int irqreturn_t ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int,...) ;
 int EINVAL ;
 int GSC_IRQ ;
 int GSC_IRQ_STATUS_OR_FRM_DONE ;
 int GSC_IRQ_STATUS_OR_IRQ ;
 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int ,int) ;
 int exynos_drm_ipp_task_done (struct exynos_drm_ipp_task*,int) ;
 int gsc_get_dst_buf_index (struct gsc_context*) ;
 int gsc_get_src_buf_index (struct gsc_context*) ;
 int gsc_read (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static irqreturn_t gsc_irq_handler(int irq, void *dev_id)
{
 struct gsc_context *ctx = dev_id;
 u32 status;
 int err = 0;

 DRM_DEV_DEBUG_KMS(ctx->dev, "gsc id[%d]\n", ctx->id);

 status = gsc_read(GSC_IRQ);
 if (status & GSC_IRQ_STATUS_OR_IRQ) {
  dev_err(ctx->dev, "occurred overflow at %d, status 0x%x.\n",
   ctx->id, status);
  err = -EINVAL;
 }

 if (status & GSC_IRQ_STATUS_OR_FRM_DONE) {
  int src_buf_id, dst_buf_id;

  dev_dbg(ctx->dev, "occurred frame done at %d, status 0x%x.\n",
   ctx->id, status);

  src_buf_id = gsc_get_src_buf_index(ctx);
  dst_buf_id = gsc_get_dst_buf_index(ctx);

  DRM_DEV_DEBUG_KMS(ctx->dev, "buf_id_src[%d]buf_id_dst[%d]\n",
      src_buf_id, dst_buf_id);

  if (src_buf_id < 0 || dst_buf_id < 0)
   err = -EINVAL;
 }

 if (ctx->task) {
  struct exynos_drm_ipp_task *task = ctx->task;

  ctx->task = ((void*)0);
  pm_runtime_mark_last_busy(ctx->dev);
  pm_runtime_put_autosuspend(ctx->dev);
  exynos_drm_ipp_task_done(task, err);
 }

 return IRQ_HANDLED;
}
