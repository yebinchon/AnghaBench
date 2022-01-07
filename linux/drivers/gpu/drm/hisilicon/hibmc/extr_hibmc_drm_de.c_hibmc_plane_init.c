
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_ERROR (char*,...) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 struct drm_plane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int channel_formats1 ;
 struct drm_plane* devm_kzalloc (int ,int,int ) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int,int *,int ,int ,int *,int ,int *) ;
 int hibmc_plane_funcs ;
 int hibmc_plane_helper_funcs ;

__attribute__((used)) static struct drm_plane *hibmc_plane_init(struct hibmc_drm_private *priv)
{
 struct drm_device *dev = priv->dev;
 struct drm_plane *plane;
 int ret = 0;

 plane = devm_kzalloc(dev->dev, sizeof(*plane), GFP_KERNEL);
 if (!plane) {
  DRM_ERROR("failed to alloc memory when init plane\n");
  return ERR_PTR(-ENOMEM);
 }





 ret = drm_universal_plane_init(dev, plane, 1, &hibmc_plane_funcs,
           channel_formats1,
           ARRAY_SIZE(channel_formats1),
           ((void*)0),
           DRM_PLANE_TYPE_PRIMARY,
           ((void*)0));
 if (ret) {
  DRM_ERROR("failed to init plane: %d\n", ret);
  return ERR_PTR(ret);
 }

 drm_plane_helper_add(plane, &hibmc_plane_helper_funcs);
 return plane;
}
