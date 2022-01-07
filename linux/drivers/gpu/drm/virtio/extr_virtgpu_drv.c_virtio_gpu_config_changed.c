
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_device {int config_changed_work; } ;
struct virtio_device {struct drm_device* priv; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void virtio_gpu_config_changed(struct virtio_device *vdev)
{
 struct drm_device *dev = vdev->priv;
 struct virtio_gpu_device *vgdev = dev->dev_private;

 schedule_work(&vgdev->config_changed_work);
}
