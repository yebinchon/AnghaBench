
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int ddev; } ;
struct drm_qxl_map {int offset; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;


 int qxl_mode_dumb_mmap (struct drm_file*,int *,int ,int *) ;

__attribute__((used)) static int qxl_map_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct qxl_device *qdev = dev->dev_private;
 struct drm_qxl_map *qxl_map = data;

 return qxl_mode_dumb_mmap(file_priv, &qdev->ddev, qxl_map->handle,
      &qxl_map->offset);
}
