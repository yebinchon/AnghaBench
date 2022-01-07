
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_bo {int va; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;
 int lima_bo_destroy (struct lima_bo*) ;
 int list_empty (int *) ;
 struct lima_bo* to_lima_bo (struct drm_gem_object*) ;

void lima_gem_free_object(struct drm_gem_object *obj)
{
 struct lima_bo *bo = to_lima_bo(obj);

 if (!list_empty(&bo->va))
  dev_err(obj->dev->dev, "lima gem free bo still has va\n");

 lima_bo_destroy(bo);
}
