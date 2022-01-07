
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp_task {int ret; int ipp; int * event; } ;


 int exynos_drm_ipp_event_send (struct exynos_drm_ipp_task*) ;
 int exynos_drm_ipp_task_free (int ,struct exynos_drm_ipp_task*) ;

__attribute__((used)) static int exynos_drm_ipp_task_cleanup(struct exynos_drm_ipp_task *task)
{
 int ret = task->ret;

 if (ret == 0 && task->event) {
  exynos_drm_ipp_event_send(task);

  task->event = ((void*)0);
 }

 exynos_drm_ipp_task_free(task->ipp, task);
 return ret;
}
