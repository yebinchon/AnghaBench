
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63m0 {int prepared; } ;
struct drm_panel {int dummy; } ;


 struct s6e63m0* panel_to_s6e63m0 (struct drm_panel*) ;
 int s6e63m0_clear_error (struct s6e63m0*) ;
 int s6e63m0_init (struct s6e63m0*) ;
 int s6e63m0_power_on (struct s6e63m0*) ;
 int s6e63m0_unprepare (struct drm_panel*) ;

__attribute__((used)) static int s6e63m0_prepare(struct drm_panel *panel)
{
 struct s6e63m0 *ctx = panel_to_s6e63m0(panel);
 int ret;

 if (ctx->prepared)
  return 0;

 ret = s6e63m0_power_on(ctx);
 if (ret < 0)
  return ret;

 s6e63m0_init(ctx);

 ret = s6e63m0_clear_error(ctx);

 if (ret < 0)
  s6e63m0_unprepare(panel);

 ctx->prepared = 1;

 return ret;
}
