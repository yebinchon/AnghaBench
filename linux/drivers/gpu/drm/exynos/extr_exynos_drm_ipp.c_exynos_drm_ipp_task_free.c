
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_ipp_task {TYPE_1__* event; int dst; int src; int dev; } ;
struct exynos_drm_ipp {int drm_dev; } ;
struct TYPE_2__ {int base; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,struct exynos_drm_ipp_task*) ;
 int drm_event_cancel_free (int ,int *) ;
 int exynos_drm_ipp_task_release_buf (int *) ;
 int kfree (struct exynos_drm_ipp_task*) ;

__attribute__((used)) static void exynos_drm_ipp_task_free(struct exynos_drm_ipp *ipp,
     struct exynos_drm_ipp_task *task)
{
 DRM_DEV_DEBUG_DRIVER(task->dev, "Freeing task %pK\n", task);

 exynos_drm_ipp_task_release_buf(&task->src);
 exynos_drm_ipp_task_release_buf(&task->dst);
 if (task->event)
  drm_event_cancel_free(ipp->drm_dev, &task->event->base);
 kfree(task);
}
