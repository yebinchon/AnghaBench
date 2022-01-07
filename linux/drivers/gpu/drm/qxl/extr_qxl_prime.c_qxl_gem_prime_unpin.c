
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_bo_unpin (struct qxl_bo*) ;

void qxl_gem_prime_unpin(struct drm_gem_object *obj)
{
 struct qxl_bo *bo = gem_to_qxl_bo(obj);

 qxl_bo_unpin(bo);
}
