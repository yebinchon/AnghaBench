
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct qxl_bo {TYPE_1__ tbo; } ;


 int drm_gem_object_get (int *) ;

struct qxl_bo *qxl_bo_ref(struct qxl_bo *bo)
{
 drm_gem_object_get(&bo->tbo.base);
 return bo;
}
