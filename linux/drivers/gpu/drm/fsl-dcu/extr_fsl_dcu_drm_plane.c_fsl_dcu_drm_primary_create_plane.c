
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int GFP_KERNEL ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int ,int *,int ,int ,int *,int ,int *) ;
 int fsl_dcu_drm_plane_formats ;
 int fsl_dcu_drm_plane_funcs ;
 int fsl_dcu_drm_plane_helper_funcs ;
 int kfree (struct drm_plane*) ;
 struct drm_plane* kzalloc (int,int ) ;

struct drm_plane *fsl_dcu_drm_primary_create_plane(struct drm_device *dev)
{
 struct drm_plane *primary;
 int ret;

 primary = kzalloc(sizeof(*primary), GFP_KERNEL);
 if (!primary) {
  DRM_DEBUG_KMS("Failed to allocate primary plane\n");
  return ((void*)0);
 }


 ret = drm_universal_plane_init(dev, primary, 0,
           &fsl_dcu_drm_plane_funcs,
           fsl_dcu_drm_plane_formats,
           ARRAY_SIZE(fsl_dcu_drm_plane_formats),
           ((void*)0), DRM_PLANE_TYPE_PRIMARY, ((void*)0));
 if (ret) {
  kfree(primary);
  primary = ((void*)0);
 }
 drm_plane_helper_add(primary, &fsl_dcu_drm_plane_helper_funcs);

 return primary;
}
