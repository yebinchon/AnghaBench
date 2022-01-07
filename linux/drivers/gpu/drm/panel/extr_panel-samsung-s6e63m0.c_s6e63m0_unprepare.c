
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63m0 {int prepared; } ;
struct drm_panel {int dummy; } ;


 struct s6e63m0* panel_to_s6e63m0 (struct drm_panel*) ;
 int s6e63m0_clear_error (struct s6e63m0*) ;
 int s6e63m0_power_off (struct s6e63m0*) ;

__attribute__((used)) static int s6e63m0_unprepare(struct drm_panel *panel)
{
 struct s6e63m0 *ctx = panel_to_s6e63m0(panel);
 int ret;

 if (!ctx->prepared)
  return 0;

 s6e63m0_clear_error(ctx);

 ret = s6e63m0_power_off(ctx);
 if (ret < 0)
  return ret;

 ctx->prepared = 0;

 return 0;
}
