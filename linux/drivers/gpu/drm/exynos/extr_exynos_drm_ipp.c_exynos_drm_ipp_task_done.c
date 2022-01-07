
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp_task {int flags; int ret; int cleanup_work; int dev; struct exynos_drm_ipp* ipp; } ;
struct exynos_drm_ipp {int done_wq; int lock; struct exynos_drm_ipp_task* task; int id; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,int ,struct exynos_drm_ipp_task*,int) ;
 int DRM_EXYNOS_IPP_TASK_ASYNC ;
 int DRM_EXYNOS_IPP_TASK_DONE ;
 int INIT_WORK (int *,int ) ;
 int exynos_drm_ipp_cleanup_work ;
 int exynos_drm_ipp_next_task (struct exynos_drm_ipp*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void exynos_drm_ipp_task_done(struct exynos_drm_ipp_task *task, int ret)
{
 struct exynos_drm_ipp *ipp = task->ipp;
 unsigned long flags;

 DRM_DEV_DEBUG_DRIVER(task->dev, "ipp: %d, task %pK done: %d\n",
        ipp->id, task, ret);

 spin_lock_irqsave(&ipp->lock, flags);
 if (ipp->task == task)
  ipp->task = ((void*)0);
 task->flags |= DRM_EXYNOS_IPP_TASK_DONE;
 task->ret = ret;
 spin_unlock_irqrestore(&ipp->lock, flags);

 exynos_drm_ipp_next_task(ipp);
 wake_up(&ipp->done_wq);

 if (task->flags & DRM_EXYNOS_IPP_TASK_ASYNC) {
  INIT_WORK(&task->cleanup_work, exynos_drm_ipp_cleanup_work);
  schedule_work(&task->cleanup_work);
 }
}
