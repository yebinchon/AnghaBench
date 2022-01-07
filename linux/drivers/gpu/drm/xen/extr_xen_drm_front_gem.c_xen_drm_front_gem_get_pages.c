
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {struct page** pages; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 struct xen_gem_object* to_xen_gem_obj (struct drm_gem_object*) ;

struct page **xen_drm_front_gem_get_pages(struct drm_gem_object *gem_obj)
{
 struct xen_gem_object *xen_obj = to_xen_gem_obj(gem_obj);

 return xen_obj->pages;
}
