
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_vgem_gem_object {int dummy; } ;
struct drm_gem_object {long size; } ;


 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_KERNEL ;
 long PAGE_SHIFT ;
 int pgprot_writecombine (int ) ;
 struct drm_vgem_gem_object* to_vgem_bo (struct drm_gem_object*) ;
 struct page** vgem_pin_pages (struct drm_vgem_gem_object*) ;
 void* vmap (struct page**,long,int ,int ) ;

__attribute__((used)) static void *vgem_prime_vmap(struct drm_gem_object *obj)
{
 struct drm_vgem_gem_object *bo = to_vgem_bo(obj);
 long n_pages = obj->size >> PAGE_SHIFT;
 struct page **pages;

 pages = vgem_pin_pages(bo);
 if (IS_ERR(pages))
  return ((void*)0);

 return vmap(pages, n_pages, 0, pgprot_writecombine(PAGE_KERNEL));
}
