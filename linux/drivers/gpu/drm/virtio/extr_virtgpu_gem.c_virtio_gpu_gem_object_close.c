
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_gpu_object {int hw_res_handle; } ;
struct virtio_gpu_fpriv {int ctx_id; } ;
struct virtio_gpu_device {int has_virgl_3d; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct TYPE_2__ {struct virtio_gpu_device* dev_private; } ;


 struct virtio_gpu_object* gem_to_virtio_gpu_obj (struct drm_gem_object*) ;
 int virtio_gpu_cmd_context_detach_resource (struct virtio_gpu_device*,int ,int ) ;
 int virtio_gpu_object_reserve (struct virtio_gpu_object*,int) ;
 int virtio_gpu_object_unreserve (struct virtio_gpu_object*) ;

void virtio_gpu_gem_object_close(struct drm_gem_object *obj,
     struct drm_file *file)
{
 struct virtio_gpu_device *vgdev = obj->dev->dev_private;
 struct virtio_gpu_fpriv *vfpriv = file->driver_priv;
 struct virtio_gpu_object *qobj = gem_to_virtio_gpu_obj(obj);
 int r;

 if (!vgdev->has_virgl_3d)
  return;

 r = virtio_gpu_object_reserve(qobj, 0);
 if (r)
  return;

 virtio_gpu_cmd_context_detach_resource(vgdev, vfpriv->ctx_id,
      qobj->hw_res_handle);
 virtio_gpu_object_unreserve(qobj);
}
