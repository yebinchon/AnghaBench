
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vgem_gem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 struct drm_vgem_gem_object* to_vgem_bo (struct drm_gem_object*) ;
 int vgem_unpin_pages (struct drm_vgem_gem_object*) ;
 int vunmap (void*) ;

__attribute__((used)) static void vgem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct drm_vgem_gem_object *bo = to_vgem_bo(obj);

 vunmap(vaddr);
 vgem_unpin_pages(bo);
}
