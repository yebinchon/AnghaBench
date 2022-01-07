
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int fence_mutex; int fence_idr; } ;
struct drm_vgem_fence_attach {int flags; int out_fence; int handle; scalar_t__ pad; } ;
struct drm_gem_object {struct dma_resv* resv; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VGEM_FENCE_WRITE ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_signal (struct dma_fence*) ;
 int dma_resv_add_excl_fence (struct dma_resv*,struct dma_fence*) ;
 int dma_resv_add_shared_fence (struct dma_resv*,struct dma_fence*) ;
 int dma_resv_lock (struct dma_resv*,int *) ;
 int dma_resv_reserve_shared (struct dma_resv*,int) ;
 int dma_resv_test_signaled_rcu (struct dma_resv*,int) ;
 int dma_resv_unlock (struct dma_resv*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int idr_alloc (int *,struct dma_fence*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dma_fence* vgem_fence_create (struct vgem_file*,int) ;

int vgem_fence_attach_ioctl(struct drm_device *dev,
       void *data,
       struct drm_file *file)
{
 struct drm_vgem_fence_attach *arg = data;
 struct vgem_file *vfile = file->driver_priv;
 struct dma_resv *resv;
 struct drm_gem_object *obj;
 struct dma_fence *fence;
 int ret;

 if (arg->flags & ~VGEM_FENCE_WRITE)
  return -EINVAL;

 if (arg->pad)
  return -EINVAL;

 obj = drm_gem_object_lookup(file, arg->handle);
 if (!obj)
  return -ENOENT;

 fence = vgem_fence_create(vfile, arg->flags);
 if (!fence) {
  ret = -ENOMEM;
  goto err;
 }


 resv = obj->resv;
 if (!dma_resv_test_signaled_rcu(resv,
        arg->flags & VGEM_FENCE_WRITE)) {
  ret = -EBUSY;
  goto err_fence;
 }


 ret = 0;
 dma_resv_lock(resv, ((void*)0));
 if (arg->flags & VGEM_FENCE_WRITE)
  dma_resv_add_excl_fence(resv, fence);
 else if ((ret = dma_resv_reserve_shared(resv, 1)) == 0)
  dma_resv_add_shared_fence(resv, fence);
 dma_resv_unlock(resv);


 if (ret == 0) {
  mutex_lock(&vfile->fence_mutex);
  ret = idr_alloc(&vfile->fence_idr, fence, 1, 0, GFP_KERNEL);
  mutex_unlock(&vfile->fence_mutex);
  if (ret > 0) {
   arg->out_fence = ret;
   ret = 0;
  }
 }
err_fence:
 if (ret) {
  dma_fence_signal(fence);
  dma_fence_put(fence);
 }
err:
 drm_gem_object_put_unlocked(obj);
 return ret;
}
