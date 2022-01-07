
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi_plat_data {int (* mode_valid ) (int ,struct drm_display_mode const*) ;int priv_data; } ;
struct dw_mipi_dsi {struct dw_mipi_dsi_plat_data* plat_data; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_OK ;
 struct dw_mipi_dsi* bridge_to_dsi (struct drm_bridge*) ;
 int stub1 (int ,struct drm_display_mode const*) ;

__attribute__((used)) static enum drm_mode_status
dw_mipi_dsi_bridge_mode_valid(struct drm_bridge *bridge,
         const struct drm_display_mode *mode)
{
 struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
 const struct dw_mipi_dsi_plat_data *pdata = dsi->plat_data;
 enum drm_mode_status mode_status = MODE_OK;

 if (pdata->mode_valid)
  mode_status = pdata->mode_valid(pdata->priv_data, mode);

 return mode_status;
}
