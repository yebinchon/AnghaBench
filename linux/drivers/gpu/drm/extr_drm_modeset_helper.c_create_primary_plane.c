
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int format_default; } ;
struct drm_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int GFP_KERNEL ;
 int drm_primary_helper_funcs ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int ,int *,int ,int ,int *,int ,int *) ;
 int kfree (struct drm_plane*) ;
 struct drm_plane* kzalloc (int,int ) ;
 int safe_modeset_formats ;

__attribute__((used)) static struct drm_plane *create_primary_plane(struct drm_device *dev)
{
 struct drm_plane *primary;
 int ret;

 primary = kzalloc(sizeof(*primary), GFP_KERNEL);
 if (primary == ((void*)0)) {
  DRM_DEBUG_KMS("Failed to allocate primary plane\n");
  return ((void*)0);
 }





 primary->format_default = 1;


 ret = drm_universal_plane_init(dev, primary, 0,
           &drm_primary_helper_funcs,
           safe_modeset_formats,
           ARRAY_SIZE(safe_modeset_formats),
           ((void*)0),
           DRM_PLANE_TYPE_PRIMARY, ((void*)0));
 if (ret) {
  kfree(primary);
  primary = ((void*)0);
 }

 return primary;
}
