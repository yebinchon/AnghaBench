
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_fpriv {int ctx_id; } ;
struct virtio_gpu_device {int has_virgl_3d; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;


 int kfree (struct virtio_gpu_fpriv*) ;
 int virtio_gpu_context_destroy (struct virtio_gpu_device*,int ) ;

void virtio_gpu_driver_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct virtio_gpu_device *vgdev = dev->dev_private;
 struct virtio_gpu_fpriv *vfpriv;

 if (!vgdev->has_virgl_3d)
  return;

 vfpriv = file->driver_priv;

 virtio_gpu_context_destroy(vgdev, vfpriv->ctx_id);
 kfree(vfpriv);
 file->driver_priv = ((void*)0);
}
