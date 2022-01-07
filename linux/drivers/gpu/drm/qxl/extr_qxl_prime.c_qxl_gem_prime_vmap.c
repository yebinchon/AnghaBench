
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 void* ERR_PTR (int) ;
 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_bo_kmap (struct qxl_bo*,void**) ;

void *qxl_gem_prime_vmap(struct drm_gem_object *obj)
{
 struct qxl_bo *bo = gem_to_qxl_bo(obj);
 void *ptr;
 int ret;

 ret = qxl_bo_kmap(bo, &ptr);
 if (ret < 0)
  return ERR_PTR(ret);

 return ptr;
}
