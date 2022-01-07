
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct virtio_gpu_device {struct drm_device* ddev; } ;
struct drm_plane_helper_funcs {int dummy; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int ARRAY_SIZE (int *) ;
 int DRM_PLANE_TYPE_CURSOR ;
 int ENOMEM ;
 struct drm_plane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_plane_helper_add (struct drm_plane*,struct drm_plane_helper_funcs const*) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int,int *,int const*,int,int *,int,int *) ;
 int kfree (struct drm_plane*) ;
 struct drm_plane* kzalloc (int,int ) ;
 int * virtio_gpu_cursor_formats ;
 struct drm_plane_helper_funcs virtio_gpu_cursor_helper_funcs ;
 int * virtio_gpu_formats ;
 int virtio_gpu_plane_funcs ;
 struct drm_plane_helper_funcs virtio_gpu_primary_helper_funcs ;

struct drm_plane *virtio_gpu_plane_init(struct virtio_gpu_device *vgdev,
     enum drm_plane_type type,
     int index)
{
 struct drm_device *dev = vgdev->ddev;
 const struct drm_plane_helper_funcs *funcs;
 struct drm_plane *plane;
 const uint32_t *formats;
 int ret, nformats;

 plane = kzalloc(sizeof(*plane), GFP_KERNEL);
 if (!plane)
  return ERR_PTR(-ENOMEM);

 if (type == DRM_PLANE_TYPE_CURSOR) {
  formats = virtio_gpu_cursor_formats;
  nformats = ARRAY_SIZE(virtio_gpu_cursor_formats);
  funcs = &virtio_gpu_cursor_helper_funcs;
 } else {
  formats = virtio_gpu_formats;
  nformats = ARRAY_SIZE(virtio_gpu_formats);
  funcs = &virtio_gpu_primary_helper_funcs;
 }
 ret = drm_universal_plane_init(dev, plane, 1 << index,
           &virtio_gpu_plane_funcs,
           formats, nformats,
           ((void*)0), type, ((void*)0));
 if (ret)
  goto err_plane_init;

 drm_plane_helper_add(plane, funcs);
 return plane;

err_plane_init:
 kfree(plane);
 return ERR_PTR(ret);
}
