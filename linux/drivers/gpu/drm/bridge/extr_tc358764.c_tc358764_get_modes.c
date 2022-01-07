
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int panel; } ;
struct drm_connector {int dummy; } ;


 struct tc358764* connector_to_tc358764 (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int tc358764_get_modes(struct drm_connector *connector)
{
 struct tc358764 *ctx = connector_to_tc358764(connector);

 return drm_panel_get_modes(ctx->panel);
}
