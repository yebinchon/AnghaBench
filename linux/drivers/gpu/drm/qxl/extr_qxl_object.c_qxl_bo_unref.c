
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct qxl_bo {TYPE_1__ tbo; } ;


 int drm_gem_object_put_unlocked (int *) ;

void qxl_bo_unref(struct qxl_bo **bo)
{
 if ((*bo) == ((void*)0))
  return;

 drm_gem_object_put_unlocked(&(*bo)->tbo.base);
 *bo = ((void*)0);
}
