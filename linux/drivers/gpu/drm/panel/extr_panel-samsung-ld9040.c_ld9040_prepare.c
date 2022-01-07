
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {int dummy; } ;
struct drm_panel {int dummy; } ;


 int ld9040_clear_error (struct ld9040*) ;
 int ld9040_init (struct ld9040*) ;
 int ld9040_power_on (struct ld9040*) ;
 int ld9040_unprepare (struct drm_panel*) ;
 struct ld9040* panel_to_ld9040 (struct drm_panel*) ;

__attribute__((used)) static int ld9040_prepare(struct drm_panel *panel)
{
 struct ld9040 *ctx = panel_to_ld9040(panel);
 int ret;

 ret = ld9040_power_on(ctx);
 if (ret < 0)
  return ret;

 ld9040_init(ctx);

 ret = ld9040_clear_error(ctx);

 if (ret < 0)
  ld9040_unprepare(panel);

 return ret;
}
