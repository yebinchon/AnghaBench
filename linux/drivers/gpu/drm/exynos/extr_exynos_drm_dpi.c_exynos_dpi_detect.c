
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_dpi {int connector; TYPE_1__* panel; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int connector; } ;


 int connector_status_connected ;
 struct exynos_dpi* connector_to_dpi (struct drm_connector*) ;
 int drm_panel_attach (TYPE_1__*,int *) ;

__attribute__((used)) static enum drm_connector_status
exynos_dpi_detect(struct drm_connector *connector, bool force)
{
 struct exynos_dpi *ctx = connector_to_dpi(connector);

 if (ctx->panel && !ctx->panel->connector)
  drm_panel_attach(ctx->panel, &ctx->connector);

 return connector_status_connected;
}
