
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_vgem_gem_object {struct page** pages; int pages_lock; int pages_pin_count; int base; } ;


 scalar_t__ IS_ERR (struct page**) ;
 struct page** drm_gem_get_pages (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct page **vgem_pin_pages(struct drm_vgem_gem_object *bo)
{
 mutex_lock(&bo->pages_lock);
 if (bo->pages_pin_count++ == 0) {
  struct page **pages;

  pages = drm_gem_get_pages(&bo->base);
  if (IS_ERR(pages)) {
   bo->pages_pin_count--;
   mutex_unlock(&bo->pages_lock);
   return pages;
  }

  bo->pages = pages;
 }
 mutex_unlock(&bo->pages_lock);

 return bo->pages;
}
