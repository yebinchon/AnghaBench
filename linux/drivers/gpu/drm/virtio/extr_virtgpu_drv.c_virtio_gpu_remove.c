
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct drm_device* priv; } ;
struct drm_device {int dummy; } ;


 int drm_dev_unregister (struct drm_device*) ;
 int drm_put_dev (struct drm_device*) ;
 int virtio_gpu_deinit (struct drm_device*) ;

__attribute__((used)) static void virtio_gpu_remove(struct virtio_device *vdev)
{
 struct drm_device *dev = vdev->priv;

 drm_dev_unregister(dev);
 virtio_gpu_deinit(dev);
 drm_put_dev(dev);
}
