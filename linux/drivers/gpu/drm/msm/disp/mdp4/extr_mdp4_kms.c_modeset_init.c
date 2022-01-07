
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {int num_crtcs; struct drm_plane** crtcs; int num_planes; struct drm_plane** planes; } ;
struct mdp4_kms {struct drm_device* dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
typedef struct drm_plane drm_crtc ;
typedef enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;
typedef enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;


 int ARRAY_SIZE (int const*) ;


 int DRM_DEV_ERROR (int ,char*,...) ;



 scalar_t__ IS_ERR (struct drm_plane*) ;
 int PTR_ERR (struct drm_plane*) ;




 struct drm_plane* mdp4_crtc_init (struct drm_device*,struct drm_plane*,int ,int,int const) ;
 int mdp4_modeset_init_intf (struct mdp4_kms*,int const) ;
 struct drm_plane* mdp4_plane_init (struct drm_device*,int const,int) ;

__attribute__((used)) static int modeset_init(struct mdp4_kms *mdp4_kms)
{
 struct drm_device *dev = mdp4_kms->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_plane *plane;
 struct drm_crtc *crtc;
 int i, ret;
 static const enum mdp4_pipe rgb_planes[] = {
  131, 130,
 };
 static const enum mdp4_pipe vg_planes[] = {
  129, 128,
 };
 static const enum mdp4_dma mdp4_crtcs[] = {
  135, 136,
 };
 static const char * const mdp4_crtc_names[] = {
  "DMA_P", "DMA_E",
 };
 static const int mdp4_intfs[] = {
  133,
  134,
  132,
 };


 for (i = 0; i < ARRAY_SIZE(vg_planes); i++) {
  plane = mdp4_plane_init(dev, vg_planes[i], 0);
  if (IS_ERR(plane)) {
   DRM_DEV_ERROR(dev->dev,
    "failed to construct plane for VG%d\n", i + 1);
   ret = PTR_ERR(plane);
   goto fail;
  }
  priv->planes[priv->num_planes++] = plane;
 }

 for (i = 0; i < ARRAY_SIZE(mdp4_crtcs); i++) {
  plane = mdp4_plane_init(dev, rgb_planes[i], 1);
  if (IS_ERR(plane)) {
   DRM_DEV_ERROR(dev->dev,
    "failed to construct plane for RGB%d\n", i + 1);
   ret = PTR_ERR(plane);
   goto fail;
  }

  crtc = mdp4_crtc_init(dev, plane, priv->num_crtcs, i,
    mdp4_crtcs[i]);
  if (IS_ERR(crtc)) {
   DRM_DEV_ERROR(dev->dev, "failed to construct crtc for %s\n",
    mdp4_crtc_names[i]);
   ret = PTR_ERR(crtc);
   goto fail;
  }

  priv->crtcs[priv->num_crtcs++] = crtc;
 }
 for (i = 0; i < ARRAY_SIZE(mdp4_intfs); i++) {
  ret = mdp4_modeset_init_intf(mdp4_kms, mdp4_intfs[i]);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to initialize intf: %d, %d\n",
    i, ret);
   goto fail;
  }
 }

 return 0;

fail:
 return ret;
}
