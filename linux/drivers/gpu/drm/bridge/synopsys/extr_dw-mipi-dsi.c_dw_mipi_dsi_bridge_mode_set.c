
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {struct dw_mipi_dsi* slave; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;


 struct dw_mipi_dsi* bridge_to_dsi (struct drm_bridge*) ;
 int dw_mipi_dsi_mode_set (struct dw_mipi_dsi*,struct drm_display_mode const*) ;

__attribute__((used)) static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
     const struct drm_display_mode *mode,
     const struct drm_display_mode *adjusted_mode)
{
 struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);

 dw_mipi_dsi_mode_set(dsi, adjusted_mode);
 if (dsi->slave)
  dw_mipi_dsi_mode_set(dsi->slave, adjusted_mode);
}
