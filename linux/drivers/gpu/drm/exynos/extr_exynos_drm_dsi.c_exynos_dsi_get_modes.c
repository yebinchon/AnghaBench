
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exynos_dsi {TYPE_2__* panel; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* get_modes ) (TYPE_2__*) ;} ;


 struct exynos_dsi* connector_to_dsi (struct drm_connector*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int exynos_dsi_get_modes(struct drm_connector *connector)
{
 struct exynos_dsi *dsi = connector_to_dsi(connector);

 if (dsi->panel)
  return dsi->panel->funcs->get_modes(dsi->panel);

 return 0;
}
