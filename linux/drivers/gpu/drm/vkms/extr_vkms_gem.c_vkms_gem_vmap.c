
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_gem_object {int pages_lock; int * pages; int vmap_count; scalar_t__ vaddr; } ;
struct page {int dummy; } ;
struct drm_gem_object {unsigned int size; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SHIFT ;
 int PTR_ERR (struct page**) ;
 int VM_MAP ;
 struct page** _get_pages (struct vkms_gem_object*) ;
 int drm_gem_put_pages (struct drm_gem_object*,int *,int,int) ;
 struct vkms_gem_object* drm_gem_to_vkms_gem (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ vmap (struct page**,unsigned int,int ,int ) ;

int vkms_gem_vmap(struct drm_gem_object *obj)
{
 struct vkms_gem_object *vkms_obj = drm_gem_to_vkms_gem(obj);
 int ret = 0;

 mutex_lock(&vkms_obj->pages_lock);

 if (!vkms_obj->vaddr) {
  unsigned int n_pages = obj->size >> PAGE_SHIFT;
  struct page **pages = _get_pages(vkms_obj);

  if (IS_ERR(pages)) {
   ret = PTR_ERR(pages);
   goto out;
  }

  vkms_obj->vaddr = vmap(pages, n_pages, VM_MAP, PAGE_KERNEL);
  if (!vkms_obj->vaddr)
   goto err_vmap;
 }

 vkms_obj->vmap_count++;
 goto out;

err_vmap:
 ret = -ENOMEM;
 drm_gem_put_pages(obj, vkms_obj->pages, 0, 1);
 vkms_obj->pages = ((void*)0);
out:
 mutex_unlock(&vkms_obj->pages_lock);
 return ret;
}
