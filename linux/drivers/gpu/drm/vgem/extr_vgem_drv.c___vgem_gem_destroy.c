
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vgem_gem_object {int base; } ;


 int drm_gem_object_release (int *) ;
 int kfree (struct drm_vgem_gem_object*) ;

__attribute__((used)) static void __vgem_gem_destroy(struct drm_vgem_gem_object *obj)
{
 drm_gem_object_release(&obj->base);
 kfree(obj);
}
