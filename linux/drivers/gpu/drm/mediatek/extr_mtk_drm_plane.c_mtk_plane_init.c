
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int ARRAY_SIZE (int ) ;
 int DRM_ERROR (char*) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,unsigned long,int *,int ,int ,int *,int,int *) ;
 int formats ;
 int mtk_plane_funcs ;
 int mtk_plane_helper_funcs ;

int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
     unsigned long possible_crtcs, enum drm_plane_type type)
{
 int err;

 err = drm_universal_plane_init(dev, plane, possible_crtcs,
           &mtk_plane_funcs, formats,
           ARRAY_SIZE(formats), ((void*)0), type, ((void*)0));
 if (err) {
  DRM_ERROR("failed to initialize plane\n");
  return err;
 }

 drm_plane_helper_add(plane, &mtk_plane_helper_funcs);

 return 0;
}
