
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jh057n {int backlight; int dev; } ;
struct drm_panel {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int backlight_enable (int ) ;
 int jh057n_init_sequence (struct jh057n*) ;
 struct jh057n* panel_to_jh057n (struct drm_panel*) ;

__attribute__((used)) static int jh057n_enable(struct drm_panel *panel)
{
 struct jh057n *ctx = panel_to_jh057n(panel);
 int ret;

 ret = jh057n_init_sequence(ctx);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev, "Panel init sequence failed: %d\n",
         ret);
  return ret;
 }

 return backlight_enable(ctx->backlight);
}
