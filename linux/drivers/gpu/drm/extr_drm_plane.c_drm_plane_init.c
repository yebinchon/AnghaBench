
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_plane_funcs {int dummy; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int ,struct drm_plane_funcs const*,int const*,unsigned int,int *,int,int *) ;

int drm_plane_init(struct drm_device *dev, struct drm_plane *plane,
     uint32_t possible_crtcs,
     const struct drm_plane_funcs *funcs,
     const uint32_t *formats, unsigned int format_count,
     bool is_primary)
{
 enum drm_plane_type type;

 type = is_primary ? DRM_PLANE_TYPE_PRIMARY : DRM_PLANE_TYPE_OVERLAY;
 return drm_universal_plane_init(dev, plane, possible_crtcs, funcs,
     formats, format_count,
     ((void*)0), type, ((void*)0));
}
