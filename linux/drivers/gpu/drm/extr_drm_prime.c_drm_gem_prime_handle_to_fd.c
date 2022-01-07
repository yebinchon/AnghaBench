
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_gem_object {struct dma_buf* dma_buf; TYPE_1__* import_attach; } ;
struct TYPE_5__ {int lock; } ;
struct drm_file {TYPE_2__ prime; } ;
struct drm_device {int object_name_lock; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {struct dma_buf* dmabuf; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct dma_buf*) ;
 int PTR_ERR (struct dma_buf*) ;
 int dma_buf_fd (struct dma_buf*,int ) ;
 int dma_buf_put (struct dma_buf*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_prime_add_buf_handle (TYPE_2__*,struct dma_buf*,int ) ;
 struct dma_buf* drm_prime_lookup_buf_by_handle (TYPE_2__*,int ) ;
 struct dma_buf* export_and_register_object (struct drm_device*,struct drm_gem_object*,int ) ;
 int get_dma_buf (struct dma_buf*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_gem_prime_handle_to_fd(struct drm_device *dev,
          struct drm_file *file_priv, uint32_t handle,
          uint32_t flags,
          int *prime_fd)
{
 struct drm_gem_object *obj;
 int ret = 0;
 struct dma_buf *dmabuf;

 mutex_lock(&file_priv->prime.lock);
 obj = drm_gem_object_lookup(file_priv, handle);
 if (!obj) {
  ret = -ENOENT;
  goto out_unlock;
 }

 dmabuf = drm_prime_lookup_buf_by_handle(&file_priv->prime, handle);
 if (dmabuf) {
  get_dma_buf(dmabuf);
  goto out_have_handle;
 }

 mutex_lock(&dev->object_name_lock);

 if (obj->import_attach) {
  dmabuf = obj->import_attach->dmabuf;
  get_dma_buf(dmabuf);
  goto out_have_obj;
 }

 if (obj->dma_buf) {
  get_dma_buf(obj->dma_buf);
  dmabuf = obj->dma_buf;
  goto out_have_obj;
 }

 dmabuf = export_and_register_object(dev, obj, flags);
 if (IS_ERR(dmabuf)) {



  ret = PTR_ERR(dmabuf);
  mutex_unlock(&dev->object_name_lock);
  goto out;
 }

out_have_obj:






 ret = drm_prime_add_buf_handle(&file_priv->prime,
           dmabuf, handle);
 mutex_unlock(&dev->object_name_lock);
 if (ret)
  goto fail_put_dmabuf;

out_have_handle:
 ret = dma_buf_fd(dmabuf, flags);






 if (ret < 0) {
  goto fail_put_dmabuf;
 } else {
  *prime_fd = ret;
  ret = 0;
 }

 goto out;

fail_put_dmabuf:
 dma_buf_put(dmabuf);
out:
 drm_gem_object_put_unlocked(obj);
out_unlock:
 mutex_unlock(&file_priv->prime.lock);

 return ret;
}
