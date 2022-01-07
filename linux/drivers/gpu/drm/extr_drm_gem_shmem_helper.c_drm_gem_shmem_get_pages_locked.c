
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_shmem_object {struct page** pages; scalar_t__ pages_use_count; struct drm_gem_object base; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 scalar_t__ IS_ERR (struct page**) ;
 int PTR_ERR (struct page**) ;
 struct page** drm_gem_get_pages (struct drm_gem_object*) ;

__attribute__((used)) static int drm_gem_shmem_get_pages_locked(struct drm_gem_shmem_object *shmem)
{
 struct drm_gem_object *obj = &shmem->base;
 struct page **pages;

 if (shmem->pages_use_count++ > 0)
  return 0;

 pages = drm_gem_get_pages(obj);
 if (IS_ERR(pages)) {
  DRM_DEBUG_KMS("Failed to get pages (%ld)\n", PTR_ERR(pages));
  shmem->pages_use_count = 0;
  return PTR_ERR(pages);
 }

 shmem->pages = pages;

 return 0;
}
