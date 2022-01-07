
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm68200 {int enabled; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 struct rm68200* panel_to_rm68200 (struct drm_panel*) ;

__attribute__((used)) static int rm68200_disable(struct drm_panel *panel)
{
 struct rm68200 *ctx = panel_to_rm68200(panel);

 if (!ctx->enabled)
  return 0;

 backlight_disable(ctx->backlight);

 ctx->enabled = 0;

 return 0;
}
