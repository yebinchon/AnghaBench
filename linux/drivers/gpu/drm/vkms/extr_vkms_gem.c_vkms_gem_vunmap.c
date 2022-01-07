
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_gem_object {int vmap_count; int pages_lock; int * pages; int * vaddr; } ;
struct drm_gem_object {int dummy; } ;


 int WARN_ON (int *) ;
 int drm_gem_put_pages (struct drm_gem_object*,int *,int,int) ;
 struct vkms_gem_object* drm_gem_to_vkms_gem (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vunmap (int *) ;

void vkms_gem_vunmap(struct drm_gem_object *obj)
{
 struct vkms_gem_object *vkms_obj = drm_gem_to_vkms_gem(obj);

 mutex_lock(&vkms_obj->pages_lock);
 if (vkms_obj->vmap_count < 1) {
  WARN_ON(vkms_obj->vaddr);
  WARN_ON(vkms_obj->pages);
  mutex_unlock(&vkms_obj->pages_lock);
  return;
 }

 vkms_obj->vmap_count--;

 if (vkms_obj->vmap_count == 0) {
  vunmap(vkms_obj->vaddr);
  vkms_obj->vaddr = ((void*)0);
  drm_gem_put_pages(obj, vkms_obj->pages, 0, 1);
  vkms_obj->pages = ((void*)0);
 }

 mutex_unlock(&vkms_obj->pages_lock);
}
