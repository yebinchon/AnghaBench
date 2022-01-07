
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int id; int dev; struct exynos_drm_ipp_task* task; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef int irqreturn_t ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int exynos_drm_ipp_task_done (struct exynos_drm_ipp_task*,int ) ;
 int fimc_check_frame_end (struct fimc_context*) ;
 scalar_t__ fimc_check_ovf (struct fimc_context*) ;
 int fimc_clear_irq (struct fimc_context*) ;
 int fimc_dst_set_buf_seq (struct fimc_context*,int,int) ;
 int fimc_get_buf_id (struct fimc_context*) ;
 int fimc_stop (struct fimc_context*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static irqreturn_t fimc_irq_handler(int irq, void *dev_id)
{
 struct fimc_context *ctx = dev_id;
 int buf_id;

 DRM_DEV_DEBUG_KMS(ctx->dev, "fimc id[%d]\n", ctx->id);

 fimc_clear_irq(ctx);
 if (fimc_check_ovf(ctx))
  return IRQ_NONE;

 if (!fimc_check_frame_end(ctx))
  return IRQ_NONE;

 buf_id = fimc_get_buf_id(ctx);
 if (buf_id < 0)
  return IRQ_HANDLED;

 DRM_DEV_DEBUG_KMS(ctx->dev, "buf_id[%d]\n", buf_id);

 if (ctx->task) {
  struct exynos_drm_ipp_task *task = ctx->task;

  ctx->task = ((void*)0);
  pm_runtime_mark_last_busy(ctx->dev);
  pm_runtime_put_autosuspend(ctx->dev);
  exynos_drm_ipp_task_done(task, 0);
 }

 fimc_dst_set_buf_seq(ctx, buf_id, 0);
 fimc_stop(ctx);

 return IRQ_HANDLED;
}
