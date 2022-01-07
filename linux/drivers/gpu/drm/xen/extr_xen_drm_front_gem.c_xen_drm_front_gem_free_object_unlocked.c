
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ import_attach; } ;
struct xen_gem_object {scalar_t__ pages; TYPE_1__ base; int num_pages; scalar_t__ be_alloc; int sgt_imported; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_gem_put_pages (TYPE_1__*,scalar_t__,int,int) ;
 int drm_prime_gem_destroy (TYPE_1__*,int ) ;
 int free_xenballooned_pages (int ,scalar_t__) ;
 int gem_free_pages_array (struct xen_gem_object*) ;
 int kfree (struct xen_gem_object*) ;
 struct xen_gem_object* to_xen_gem_obj (struct drm_gem_object*) ;

void xen_drm_front_gem_free_object_unlocked(struct drm_gem_object *gem_obj)
{
 struct xen_gem_object *xen_obj = to_xen_gem_obj(gem_obj);

 if (xen_obj->base.import_attach) {
  drm_prime_gem_destroy(&xen_obj->base, xen_obj->sgt_imported);
  gem_free_pages_array(xen_obj);
 } else {
  if (xen_obj->pages) {
   if (xen_obj->be_alloc) {
    free_xenballooned_pages(xen_obj->num_pages,
       xen_obj->pages);
    gem_free_pages_array(xen_obj);
   } else {
    drm_gem_put_pages(&xen_obj->base,
        xen_obj->pages, 1, 0);
   }
  }
 }
 drm_gem_object_release(gem_obj);
 kfree(xen_obj);
}
