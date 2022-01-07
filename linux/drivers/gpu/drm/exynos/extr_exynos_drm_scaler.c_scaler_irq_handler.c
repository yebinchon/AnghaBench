
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dev; struct exynos_drm_ipp_task* task; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int exynos_drm_ipp_task_done (struct exynos_drm_ipp_task*,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int scaler_disable_int (struct scaler_context*) ;
 int scaler_get_int_status (struct scaler_context*) ;
 int scaler_task_done (int ) ;

__attribute__((used)) static irqreturn_t scaler_irq_handler(int irq, void *arg)
{
 struct scaler_context *scaler = arg;

 u32 val = scaler_get_int_status(scaler);

 scaler_disable_int(scaler);

 if (scaler->task) {
  struct exynos_drm_ipp_task *task = scaler->task;

  scaler->task = ((void*)0);
  pm_runtime_mark_last_busy(scaler->dev);
  pm_runtime_put_autosuspend(scaler->dev);
  exynos_drm_ipp_task_done(task, scaler_task_done(val));
 }

 return IRQ_HANDLED;
}
