
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_device {int ddev; } ;
struct drm_virtgpu_map {int offset; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;


 int virtio_gpu_mode_dumb_mmap (struct drm_file*,int ,int ,int *) ;

__attribute__((used)) static int virtio_gpu_map_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct virtio_gpu_device *vgdev = dev->dev_private;
 struct drm_virtgpu_map *virtio_gpu_map = data;

 return virtio_gpu_mode_dumb_mmap(file_priv, vgdev->ddev,
      virtio_gpu_map->handle,
      &virtio_gpu_map->offset);
}
