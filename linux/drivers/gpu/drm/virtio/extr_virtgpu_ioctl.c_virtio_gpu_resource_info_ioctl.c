
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct virtio_gpu_object {int hw_res_handle; TYPE_1__ gem_base; } ;
struct drm_virtgpu_resource_info {int res_handle; int size; int bo_handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct virtio_gpu_object* gem_to_virtio_gpu_obj (struct drm_gem_object*) ;

__attribute__((used)) static int virtio_gpu_resource_info_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct drm_virtgpu_resource_info *ri = data;
 struct drm_gem_object *gobj = ((void*)0);
 struct virtio_gpu_object *qobj = ((void*)0);

 gobj = drm_gem_object_lookup(file_priv, ri->bo_handle);
 if (gobj == ((void*)0))
  return -ENOENT;

 qobj = gem_to_virtio_gpu_obj(gobj);

 ri->size = qobj->gem_base.size;
 ri->res_handle = qobj->hw_res_handle;
 drm_gem_object_put_unlocked(gobj);
 return 0;
}
