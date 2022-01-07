
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int num_pages; int pages; } ;
struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int ) ;
 struct sg_table* drm_prime_pages_to_sg (int ,int ) ;
 struct xen_gem_object* to_xen_gem_obj (struct drm_gem_object*) ;

struct sg_table *xen_drm_front_gem_get_sg_table(struct drm_gem_object *gem_obj)
{
 struct xen_gem_object *xen_obj = to_xen_gem_obj(gem_obj);

 if (!xen_obj->pages)
  return ERR_PTR(-ENOMEM);

 return drm_prime_pages_to_sg(xen_obj->pages, xen_obj->num_pages);
}
