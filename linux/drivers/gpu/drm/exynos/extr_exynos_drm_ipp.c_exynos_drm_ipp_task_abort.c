
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_ipp_task {int flags; int head; } ;
struct exynos_drm_ipp {int lock; TYPE_1__* funcs; struct exynos_drm_ipp_task* task; } ;
struct TYPE_2__ {int (* abort ) (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ;} ;


 int DRM_EXYNOS_IPP_TASK_ASYNC ;
 int DRM_EXYNOS_IPP_TASK_DONE ;
 int exynos_drm_ipp_task_cleanup (struct exynos_drm_ipp_task*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ;

__attribute__((used)) static void exynos_drm_ipp_task_abort(struct exynos_drm_ipp *ipp,
          struct exynos_drm_ipp_task *task)
{
 unsigned long flags;

 spin_lock_irqsave(&ipp->lock, flags);
 if (task->flags & DRM_EXYNOS_IPP_TASK_DONE) {

  exynos_drm_ipp_task_cleanup(task);
 } else if (ipp->task != task) {

  list_del_init(&task->head);
  exynos_drm_ipp_task_cleanup(task);
 } else {




  task->flags |= DRM_EXYNOS_IPP_TASK_ASYNC;
  spin_unlock_irqrestore(&ipp->lock, flags);
  if (ipp->funcs->abort)
   ipp->funcs->abort(ipp, task);
  return;
 }
 spin_unlock_irqrestore(&ipp->lock, flags);
}
