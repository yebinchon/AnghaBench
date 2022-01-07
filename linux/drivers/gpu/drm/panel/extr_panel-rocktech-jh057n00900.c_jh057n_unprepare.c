
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jh057n {int prepared; int vcc; int iovcc; } ;
struct drm_panel {int dummy; } ;


 struct jh057n* panel_to_jh057n (struct drm_panel*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int jh057n_unprepare(struct drm_panel *panel)
{
 struct jh057n *ctx = panel_to_jh057n(panel);

 if (!ctx->prepared)
  return 0;

 regulator_disable(ctx->iovcc);
 regulator_disable(ctx->vcc);
 ctx->prepared = 0;

 return 0;
}
