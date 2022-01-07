
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_plane {int dummy; } ;
struct zx_plane {struct device* dev; struct drm_plane plane; } ;
struct drm_plane_helper_funcs {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 unsigned int ARRAY_SIZE (int *) ;
 int DRM_DEV_ERROR (struct device*,char*,int) ;


 int ENODEV ;
 int VOU_CRTC_MASK ;
 int drm_plane_helper_add (struct drm_plane*,struct drm_plane_helper_funcs const*) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int ,int *,int const*,unsigned int,int *,int,int *) ;
 int * gl_formats ;
 int * vl_formats ;
 struct drm_plane_helper_funcs zx_gl_plane_helper_funcs ;
 int zx_plane_funcs ;
 int zx_plane_hbsc_init (struct zx_plane*) ;
 struct drm_plane_helper_funcs zx_vl_plane_helper_funcs ;

int zx_plane_init(struct drm_device *drm, struct zx_plane *zplane,
    enum drm_plane_type type)
{
 const struct drm_plane_helper_funcs *helper;
 struct drm_plane *plane = &zplane->plane;
 struct device *dev = zplane->dev;
 const uint32_t *formats;
 unsigned int format_count;
 int ret;

 zx_plane_hbsc_init(zplane);

 switch (type) {
 case 128:
  helper = &zx_gl_plane_helper_funcs;
  formats = gl_formats;
  format_count = ARRAY_SIZE(gl_formats);
  break;
 case 129:
  helper = &zx_vl_plane_helper_funcs;
  formats = vl_formats;
  format_count = ARRAY_SIZE(vl_formats);
  break;
 default:
  return -ENODEV;
 }

 ret = drm_universal_plane_init(drm, plane, VOU_CRTC_MASK,
           &zx_plane_funcs, formats, format_count,
           ((void*)0), type, ((void*)0));
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init universal plane: %d\n", ret);
  return ret;
 }

 drm_plane_helper_add(plane, helper);

 return 0;
}
