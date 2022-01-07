
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct truly_nt35597 {int enabled; int dev; scalar_t__ backlight; } ;
struct drm_panel {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int backlight_enable (scalar_t__) ;
 struct truly_nt35597* panel_to_ctx (struct drm_panel*) ;

__attribute__((used)) static int truly_nt35597_enable(struct drm_panel *panel)
{
 struct truly_nt35597 *ctx = panel_to_ctx(panel);
 int ret;

 if (ctx->enabled)
  return 0;

 if (ctx->backlight) {
  ret = backlight_enable(ctx->backlight);
  if (ret < 0)
   DRM_DEV_ERROR(ctx->dev, "backlight enable failed %d\n",
        ret);
 }

 ctx->enabled = 1;

 return 0;
}
