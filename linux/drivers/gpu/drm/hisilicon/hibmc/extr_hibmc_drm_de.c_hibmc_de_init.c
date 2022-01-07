
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dev; } ;
struct drm_crtc {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_plane*) ;
 int PTR_ERR (struct drm_plane*) ;
 struct drm_crtc* devm_kzalloc (int ,int,int ) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,int *,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (struct drm_crtc*,int) ;
 int hibmc_crtc_funcs ;
 int hibmc_crtc_helper_funcs ;
 struct drm_plane* hibmc_plane_init (struct hibmc_drm_private*) ;

int hibmc_de_init(struct hibmc_drm_private *priv)
{
 struct drm_device *dev = priv->dev;
 struct drm_crtc *crtc;
 struct drm_plane *plane;
 int ret;

 plane = hibmc_plane_init(priv);
 if (IS_ERR(plane)) {
  DRM_ERROR("failed to create plane: %ld\n", PTR_ERR(plane));
  return PTR_ERR(plane);
 }

 crtc = devm_kzalloc(dev->dev, sizeof(*crtc), GFP_KERNEL);
 if (!crtc) {
  DRM_ERROR("failed to alloc memory when init crtc\n");
  return -ENOMEM;
 }

 ret = drm_crtc_init_with_planes(dev, crtc, plane,
     ((void*)0), &hibmc_crtc_funcs, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to init crtc: %d\n", ret);
  return ret;
 }

 ret = drm_mode_crtc_set_gamma_size(crtc, 256);
 if (ret) {
  DRM_ERROR("failed to set gamma size: %d\n", ret);
  return ret;
 }
 drm_crtc_helper_add(crtc, &hibmc_crtc_helper_funcs);

 return 0;
}
