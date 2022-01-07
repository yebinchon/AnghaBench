
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct vidi_context {int crtc; struct exynos_drm_plane* planes; struct drm_device* drm_dev; struct drm_encoder encoder; } ;
struct exynos_drm_plane_config {unsigned int zpos; int type; int num_pixel_formats; int pixel_formats; int member_0; } ;
struct exynos_drm_plane {int base; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 size_t DEFAULT_WIN ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int DRM_MODE_ENCODER_TMDS ;
 int EXYNOS_DISPLAY_TYPE_VIDI ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int WINDOWS_NR ;
 struct vidi_context* dev_get_drvdata (struct device*) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int exynos_drm_crtc_create (struct drm_device*,int *,int ,int *,struct vidi_context*) ;
 int exynos_drm_set_possible_crtcs (struct drm_encoder*,int ) ;
 int exynos_plane_init (struct drm_device*,struct exynos_drm_plane*,unsigned int,struct exynos_drm_plane_config*) ;
 int exynos_vidi_encoder_funcs ;
 int exynos_vidi_encoder_helper_funcs ;
 int formats ;
 int vidi_create_connector (struct drm_encoder*) ;
 int vidi_crtc_ops ;
 int * vidi_win_types ;

__attribute__((used)) static int vidi_bind(struct device *dev, struct device *master, void *data)
{
 struct vidi_context *ctx = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct drm_encoder *encoder = &ctx->encoder;
 struct exynos_drm_plane *exynos_plane;
 struct exynos_drm_plane_config plane_config = { 0 };
 unsigned int i;
 int ret;

 ctx->drm_dev = drm_dev;

 plane_config.pixel_formats = formats;
 plane_config.num_pixel_formats = ARRAY_SIZE(formats);

 for (i = 0; i < WINDOWS_NR; i++) {
  plane_config.zpos = i;
  plane_config.type = vidi_win_types[i];

  ret = exynos_plane_init(drm_dev, &ctx->planes[i], i,
     &plane_config);
  if (ret)
   return ret;
 }

 exynos_plane = &ctx->planes[DEFAULT_WIN];
 ctx->crtc = exynos_drm_crtc_create(drm_dev, &exynos_plane->base,
   EXYNOS_DISPLAY_TYPE_VIDI, &vidi_crtc_ops, ctx);
 if (IS_ERR(ctx->crtc)) {
  DRM_DEV_ERROR(dev, "failed to create crtc.\n");
  return PTR_ERR(ctx->crtc);
 }

 drm_encoder_init(drm_dev, encoder, &exynos_vidi_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));

 drm_encoder_helper_add(encoder, &exynos_vidi_encoder_helper_funcs);

 ret = exynos_drm_set_possible_crtcs(encoder, EXYNOS_DISPLAY_TYPE_VIDI);
 if (ret < 0)
  return ret;

 ret = vidi_create_connector(encoder);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to create connector ret = %d\n",
         ret);
  drm_encoder_cleanup(encoder);
  return ret;
 }

 return 0;
}
