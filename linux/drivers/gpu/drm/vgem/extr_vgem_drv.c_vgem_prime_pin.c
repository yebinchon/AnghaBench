
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_vgem_gem_object {int dummy; } ;
struct drm_gem_object {long size; } ;


 scalar_t__ IS_ERR (struct page**) ;
 long PAGE_SHIFT ;
 int PTR_ERR (struct page**) ;
 int drm_clflush_pages (struct page**,long) ;
 struct drm_vgem_gem_object* to_vgem_bo (struct drm_gem_object*) ;
 struct page** vgem_pin_pages (struct drm_vgem_gem_object*) ;

__attribute__((used)) static int vgem_prime_pin(struct drm_gem_object *obj)
{
 struct drm_vgem_gem_object *bo = to_vgem_bo(obj);
 long n_pages = obj->size >> PAGE_SHIFT;
 struct page **pages;

 pages = vgem_pin_pages(bo);
 if (IS_ERR(pages))
  return PTR_ERR(pages);




 drm_clflush_pages(pages, n_pages);

 return 0;
}
