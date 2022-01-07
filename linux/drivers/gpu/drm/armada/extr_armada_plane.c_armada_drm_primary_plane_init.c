
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int armada_primary_formats ;
 int armada_primary_plane_funcs ;
 int armada_primary_plane_helper_funcs ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int ,int *,int ,int ,int *,int ,int *) ;

int armada_drm_primary_plane_init(struct drm_device *drm,
 struct drm_plane *primary)
{
 int ret;

 drm_plane_helper_add(primary, &armada_primary_plane_helper_funcs);

 ret = drm_universal_plane_init(drm, primary, 0,
           &armada_primary_plane_funcs,
           armada_primary_formats,
           ARRAY_SIZE(armada_primary_formats),
           ((void*)0),
           DRM_PLANE_TYPE_PRIMARY, ((void*)0));

 return ret;
}
