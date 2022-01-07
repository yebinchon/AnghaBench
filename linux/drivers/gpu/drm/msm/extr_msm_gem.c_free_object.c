
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {TYPE_1__* import_attach; struct drm_device* dev; } ;
struct msm_gem_object {int lock; int sgt; scalar_t__ pages; scalar_t__ vaddr; int mm_list; struct drm_gem_object base; } ;
struct drm_device {int struct_mutex; } ;
struct TYPE_2__ {int dmabuf; } ;


 int WARN_ON (int) ;
 int dma_buf_vunmap (int ,scalar_t__) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 int is_active (struct msm_gem_object*) ;
 int kfree (struct msm_gem_object*) ;
 int kvfree (scalar_t__) ;
 int list_del (int *) ;
 int msm_gem_vunmap_locked (struct drm_gem_object*) ;
 int mutex_is_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_iova (struct drm_gem_object*) ;
 int put_pages (struct drm_gem_object*) ;

__attribute__((used)) static void free_object(struct msm_gem_object *msm_obj)
{
 struct drm_gem_object *obj = &msm_obj->base;
 struct drm_device *dev = obj->dev;

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));


 WARN_ON(is_active(msm_obj));

 list_del(&msm_obj->mm_list);

 mutex_lock(&msm_obj->lock);

 put_iova(obj);

 if (obj->import_attach) {
  if (msm_obj->vaddr)
   dma_buf_vunmap(obj->import_attach->dmabuf, msm_obj->vaddr);




  if (msm_obj->pages)
   kvfree(msm_obj->pages);

  drm_prime_gem_destroy(obj, msm_obj->sgt);
 } else {
  msm_gem_vunmap_locked(obj);
  put_pages(obj);
 }

 drm_gem_object_release(obj);

 mutex_unlock(&msm_obj->lock);
 kfree(msm_obj);
}
