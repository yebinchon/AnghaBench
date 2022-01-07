
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int EINVAL ;
 int TTM_PL_FLAG_TT ;
 int nouveau_bo_pin (struct nouveau_bo*,int ,int) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;

int nouveau_gem_prime_pin(struct drm_gem_object *obj)
{
 struct nouveau_bo *nvbo = nouveau_gem_object(obj);
 int ret;


 ret = nouveau_bo_pin(nvbo, TTM_PL_FLAG_TT, 0);
 if (ret)
  return -EINVAL;

 return 0;
}
