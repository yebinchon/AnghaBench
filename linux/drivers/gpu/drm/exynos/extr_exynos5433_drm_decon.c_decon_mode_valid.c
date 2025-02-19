
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {scalar_t__ i80_mode; struct decon_context* ctx; } ;
struct drm_display_mode {int dummy; } ;
struct decon_context {int dev; scalar_t__ irq; scalar_t__ irq_vsync; scalar_t__ irq_lcd_sys; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_BAD ;
 int MODE_OK ;
 int dev_info (int ,char*,char*) ;

__attribute__((used)) static enum drm_mode_status decon_mode_valid(struct exynos_drm_crtc *crtc,
  const struct drm_display_mode *mode)
{
 struct decon_context *ctx = crtc->ctx;

 ctx->irq = crtc->i80_mode ? ctx->irq_lcd_sys : ctx->irq_vsync;

 if (ctx->irq)
  return MODE_OK;

 dev_info(ctx->dev, "Sink requires %s mode, but appropriate interrupt is not provided.\n",
   crtc->i80_mode ? "command" : "video");

 return MODE_BAD;
}
