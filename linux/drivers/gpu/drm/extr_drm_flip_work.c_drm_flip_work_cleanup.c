
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_flip_work {int commited; int queued; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;

void drm_flip_work_cleanup(struct drm_flip_work *work)
{
 WARN_ON(!list_empty(&work->queued) || !list_empty(&work->commited));
}
