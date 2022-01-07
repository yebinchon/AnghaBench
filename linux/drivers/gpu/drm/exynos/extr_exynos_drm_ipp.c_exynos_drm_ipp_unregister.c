
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp {int task; int head; int todo_list; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int list_del (int *) ;
 int list_empty (int *) ;

void exynos_drm_ipp_unregister(struct device *dev,
          struct exynos_drm_ipp *ipp)
{
 WARN_ON(ipp->task);
 WARN_ON(!list_empty(&ipp->todo_list));
 list_del(&ipp->head);
}
