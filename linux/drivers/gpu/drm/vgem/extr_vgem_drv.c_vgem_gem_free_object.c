
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vgem_gem_object {int table; int pages_lock; int pages; } ;
struct drm_gem_object {scalar_t__ import_attach; } ;


 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 int kfree (struct drm_vgem_gem_object*) ;
 int kvfree (int ) ;
 int mutex_destroy (int *) ;
 struct drm_vgem_gem_object* to_vgem_bo (struct drm_gem_object*) ;

__attribute__((used)) static void vgem_gem_free_object(struct drm_gem_object *obj)
{
 struct drm_vgem_gem_object *vgem_obj = to_vgem_bo(obj);

 kvfree(vgem_obj->pages);
 mutex_destroy(&vgem_obj->pages_lock);

 if (obj->import_attach)
  drm_prime_gem_destroy(obj, vgem_obj->table);

 drm_gem_object_release(obj);
 kfree(vgem_obj);
}
