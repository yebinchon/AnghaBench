
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;
struct vkms_device {struct drm_device drm; } ;
struct drm_plane_helper_funcs {int dummy; } ;
struct drm_plane {int dummy; } ;
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
 int * vkms_cursor_formats ;
 int * vkms_formats ;
 int vkms_plane_funcs ;
 struct drm_plane_helper_funcs vkms_primary_helper_funcs ;

struct drm_plane *vkms_plane_init(struct vkms_device *vkmsdev,
      enum drm_plane_type type, int index)
{
 struct drm_device *dev = &vkmsdev->drm;
 const struct drm_plane_helper_funcs *funcs;
 struct drm_plane *plane;
 const u32 *formats;
 int ret, nformats;

 plane = kzalloc(sizeof(*plane), GFP_KERNEL);
 if (!plane)
  return ERR_PTR(-ENOMEM);

 if (type == DRM_PLANE_TYPE_CURSOR) {
  formats = vkms_cursor_formats;
  nformats = ARRAY_SIZE(vkms_cursor_formats);
  funcs = &vkms_primary_helper_funcs;
 } else {
  formats = vkms_formats;
  nformats = ARRAY_SIZE(vkms_formats);
  funcs = &vkms_primary_helper_funcs;
 }

 ret = drm_universal_plane_init(dev, plane, 1 << index,
           &vkms_plane_funcs,
           formats, nformats,
           ((void*)0), type, ((void*)0));
 if (ret) {
  kfree(plane);
  return ERR_PTR(ret);
 }

 drm_plane_helper_add(plane, funcs);

 return plane;
}
