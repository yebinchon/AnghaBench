
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct vkms_gem_object {struct page** pages; struct drm_gem_object gem; } ;
struct page {int dummy; } ;


 scalar_t__ IS_ERR (struct page**) ;
 scalar_t__ cmpxchg (struct page***,int *,struct page**) ;
 struct page** drm_gem_get_pages (struct drm_gem_object*) ;
 int drm_gem_put_pages (struct drm_gem_object*,struct page**,int,int) ;

__attribute__((used)) static struct page **_get_pages(struct vkms_gem_object *vkms_obj)
{
 struct drm_gem_object *gem_obj = &vkms_obj->gem;

 if (!vkms_obj->pages) {
  struct page **pages = drm_gem_get_pages(gem_obj);

  if (IS_ERR(pages))
   return pages;

  if (cmpxchg(&vkms_obj->pages, ((void*)0), pages))
   drm_gem_put_pages(gem_obj, pages, 0, 1);
 }

 return vkms_obj->pages;
}
