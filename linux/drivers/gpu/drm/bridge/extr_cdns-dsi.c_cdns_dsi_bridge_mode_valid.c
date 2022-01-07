
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int vtotal; int vsync_end; int vsync_start; int hdisplay; } ;
struct drm_bridge {int dummy; } ;
struct cdns_dsi_output {TYPE_1__* dev; } ;
struct cdns_dsi_input {int dummy; } ;
struct cdns_dsi_cfg {int dummy; } ;
struct cdns_dsi {struct cdns_dsi_output output; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int format; } ;


 int MODE_BAD ;
 int MODE_H_ILLEGAL ;
 int MODE_OK ;
 int MODE_V_ILLEGAL ;
 struct cdns_dsi_input* bridge_to_cdns_dsi_input (struct drm_bridge*) ;
 int cdns_dsi_check_conf (struct cdns_dsi*,struct drm_display_mode const*,struct cdns_dsi_cfg*,int) ;
 struct cdns_dsi* input_to_dsi (struct cdns_dsi_input*) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;

__attribute__((used)) static enum drm_mode_status
cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
      const struct drm_display_mode *mode)
{
 struct cdns_dsi_input *input = bridge_to_cdns_dsi_input(bridge);
 struct cdns_dsi *dsi = input_to_dsi(input);
 struct cdns_dsi_output *output = &dsi->output;
 struct cdns_dsi_cfg dsi_cfg;
 int bpp, ret;





 if (mode->vtotal - mode->vsync_end < 2)
  return MODE_V_ILLEGAL;


 if (mode->vsync_end - mode->vsync_start < 2)
  return MODE_V_ILLEGAL;


 bpp = mipi_dsi_pixel_format_to_bpp(output->dev->format);
 if ((mode->hdisplay * bpp) % 32)
  return MODE_H_ILLEGAL;

 ret = cdns_dsi_check_conf(dsi, mode, &dsi_cfg, 1);
 if (ret)
  return MODE_BAD;

 return MODE_OK;
}
