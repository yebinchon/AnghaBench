
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct virtio_gpu_object_params {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct virtio_gpu_object {struct drm_gem_object gem_base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct virtio_gpu_object*) ;
 int PTR_ERR (struct virtio_gpu_object*) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 struct virtio_gpu_object* virtio_gpu_alloc_object (struct drm_device*,struct virtio_gpu_object_params*,int *) ;

int virtio_gpu_gem_create(struct drm_file *file,
     struct drm_device *dev,
     struct virtio_gpu_object_params *params,
     struct drm_gem_object **obj_p,
     uint32_t *handle_p)
{
 struct virtio_gpu_object *obj;
 int ret;
 u32 handle;

 obj = virtio_gpu_alloc_object(dev, params, ((void*)0));
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 ret = drm_gem_handle_create(file, &obj->gem_base, &handle);
 if (ret) {
  drm_gem_object_release(&obj->gem_base);
  return ret;
 }

 *obj_p = &obj->gem_base;


 drm_gem_object_put_unlocked(&obj->gem_base);

 *handle_p = handle;
 return 0;
}
