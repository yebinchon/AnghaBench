
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp_task {int head; } ;
struct exynos_drm_ipp {int lock; int todo_list; } ;


 int exynos_drm_ipp_next_task (struct exynos_drm_ipp*) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void exynos_drm_ipp_schedule_task(struct exynos_drm_ipp *ipp,
      struct exynos_drm_ipp_task *task)
{
 unsigned long flags;

 spin_lock_irqsave(&ipp->lock, flags);
 list_add(&task->head, &ipp->todo_list);
 spin_unlock_irqrestore(&ipp->lock, flags);

 exynos_drm_ipp_next_task(ipp);
}
