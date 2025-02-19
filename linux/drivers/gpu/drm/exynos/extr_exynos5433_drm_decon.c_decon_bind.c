
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_plane {int base; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct decon_context {unsigned int first_win; int out_type; int crtc; struct exynos_drm_plane* planes; TYPE_1__* configs; struct drm_device* drm_dev; } ;
typedef enum exynos_drm_output_type { ____Placeholder_exynos_drm_output_type } exynos_drm_output_type ;
struct TYPE_2__ {unsigned int zpos; int capabilities; int type; int num_pixel_formats; int pixel_formats; } ;


 int ARRAY_SIZE (int ) ;
 int EXYNOS_DISPLAY_TYPE_HDMI ;
 int EXYNOS_DISPLAY_TYPE_LCD ;
 int IFTYPE_HDMI ;
 scalar_t__ IS_ERR (int ) ;
 size_t PRIMARY_WIN ;
 int PTR_ERR (int ) ;
 unsigned int WINDOWS_NR ;
 int * capabilities ;
 int decon_clear_channels (int ) ;
 int decon_crtc_ops ;
 int decon_formats ;
 int * decon_win_types ;
 struct decon_context* dev_get_drvdata (struct device*) ;
 int exynos_drm_crtc_create (struct drm_device*,int *,int,int *,struct decon_context*) ;
 int exynos_drm_register_dma (struct drm_device*,struct device*) ;
 int exynos_plane_init (struct drm_device*,struct exynos_drm_plane*,unsigned int,TYPE_1__*) ;

__attribute__((used)) static int decon_bind(struct device *dev, struct device *master, void *data)
{
 struct decon_context *ctx = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct exynos_drm_plane *exynos_plane;
 enum exynos_drm_output_type out_type;
 unsigned int win;
 int ret;

 ctx->drm_dev = drm_dev;

 for (win = ctx->first_win; win < WINDOWS_NR; win++) {
  ctx->configs[win].pixel_formats = decon_formats;
  ctx->configs[win].num_pixel_formats = ARRAY_SIZE(decon_formats);
  ctx->configs[win].zpos = win - ctx->first_win;
  ctx->configs[win].type = decon_win_types[win];
  ctx->configs[win].capabilities = capabilities[win];

  ret = exynos_plane_init(drm_dev, &ctx->planes[win], win,
     &ctx->configs[win]);
  if (ret)
   return ret;
 }

 exynos_plane = &ctx->planes[PRIMARY_WIN];
 out_type = (ctx->out_type & IFTYPE_HDMI) ? EXYNOS_DISPLAY_TYPE_HDMI
        : EXYNOS_DISPLAY_TYPE_LCD;
 ctx->crtc = exynos_drm_crtc_create(drm_dev, &exynos_plane->base,
   out_type, &decon_crtc_ops, ctx);
 if (IS_ERR(ctx->crtc))
  return PTR_ERR(ctx->crtc);

 decon_clear_channels(ctx->crtc);

 return exynos_drm_register_dma(drm_dev, dev);
}
