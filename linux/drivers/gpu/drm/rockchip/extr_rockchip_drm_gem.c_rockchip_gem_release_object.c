
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int base; } ;


 int drm_gem_object_release (int *) ;
 int kfree (struct rockchip_gem_object*) ;

__attribute__((used)) static void rockchip_gem_release_object(struct rockchip_gem_object *rk_obj)
{
 drm_gem_object_release(&rk_obj->base);
 kfree(rk_obj);
}
