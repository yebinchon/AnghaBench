
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {scalar_t__ pages; } ;
struct drm_gem_object {int dummy; } ;


 struct rockchip_gem_object* to_rockchip_obj (struct drm_gem_object*) ;
 int vunmap (void*) ;

void rockchip_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);

 if (rk_obj->pages) {
  vunmap(vaddr);
  return;
 }


}
