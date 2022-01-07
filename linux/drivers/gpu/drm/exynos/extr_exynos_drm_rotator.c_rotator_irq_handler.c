
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rot_context {int dev; struct exynos_drm_ipp_task* task; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef int irqreturn_t ;
typedef enum rot_irq_status { ____Placeholder_rot_irq_status } rot_irq_status ;


 int EINVAL ;
 int IRQ_HANDLED ;
 int ROT_IRQ_STATUS_COMPLETE ;
 int ROT_STATUS ;
 int ROT_STATUS_IRQ_PENDING (int ) ;
 int exynos_drm_ipp_task_done (struct exynos_drm_ipp_task*,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int rot_read (int ) ;
 int rot_write (int ,int ) ;
 int rotator_reg_get_irq_status (struct rot_context*) ;

__attribute__((used)) static irqreturn_t rotator_irq_handler(int irq, void *arg)
{
 struct rot_context *rot = arg;
 enum rot_irq_status irq_status;
 u32 val;


 irq_status = rotator_reg_get_irq_status(rot);


 val = rot_read(ROT_STATUS);
 val |= ROT_STATUS_IRQ_PENDING((u32)irq_status);
 rot_write(val, ROT_STATUS);

 if (rot->task) {
  struct exynos_drm_ipp_task *task = rot->task;

  rot->task = ((void*)0);
  pm_runtime_mark_last_busy(rot->dev);
  pm_runtime_put_autosuspend(rot->dev);
  exynos_drm_ipp_task_done(task,
   irq_status == ROT_IRQ_STATUS_COMPLETE ? 0 : -EINVAL);
 }

 return IRQ_HANDLED;
}
