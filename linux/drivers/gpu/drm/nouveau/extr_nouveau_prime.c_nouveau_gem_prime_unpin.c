
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int nouveau_bo_unpin (struct nouveau_bo*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;

void nouveau_gem_prime_unpin(struct drm_gem_object *obj)
{
 struct nouveau_bo *nvbo = nouveau_gem_object(obj);

 nouveau_bo_unpin(nvbo);
}
