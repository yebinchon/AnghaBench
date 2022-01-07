
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int enabled; int bl_dev; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 struct otm8009a* panel_to_otm8009a (struct drm_panel*) ;

__attribute__((used)) static int otm8009a_enable(struct drm_panel *panel)
{
 struct otm8009a *ctx = panel_to_otm8009a(panel);

 if (ctx->enabled)
  return 0;

 backlight_enable(ctx->bl_dev);

 ctx->enabled = 1;

 return 0;
}
