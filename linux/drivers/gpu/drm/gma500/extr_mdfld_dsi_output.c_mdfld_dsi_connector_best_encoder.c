
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdfld_dsi_connector {int dummy; } ;
struct mdfld_dsi_config {TYPE_2__* encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {struct drm_encoder base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 struct mdfld_dsi_connector* mdfld_dsi_connector (struct drm_connector*) ;
 struct mdfld_dsi_config* mdfld_dsi_get_config (struct mdfld_dsi_connector*) ;

__attribute__((used)) static struct drm_encoder *mdfld_dsi_connector_best_encoder(
    struct drm_connector *connector)
{
 struct mdfld_dsi_connector *dsi_connector =
    mdfld_dsi_connector(connector);
 struct mdfld_dsi_config *dsi_config =
    mdfld_dsi_get_config(dsi_connector);
 return &dsi_config->encoder->base.base;
}
