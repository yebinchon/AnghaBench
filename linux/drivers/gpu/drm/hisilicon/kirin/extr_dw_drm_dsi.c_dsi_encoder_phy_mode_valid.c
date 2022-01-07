
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mipi_phy_params {int dummy; } ;
struct dw_dsi {int lanes; int format; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; int vdisplay; int hdisplay; } ;
typedef int phy ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int MODE_BAD ;
 int MODE_OK ;
 int drm_mode_vrefresh (struct drm_display_mode const*) ;
 int dsi_calc_phy_rate (int,struct mipi_phy_params*) ;
 struct dw_dsi* encoder_to_dsi (struct drm_encoder*) ;
 int memset (struct mipi_phy_params*,int ,int) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;

__attribute__((used)) static enum drm_mode_status dsi_encoder_phy_mode_valid(
     struct drm_encoder *encoder,
     const struct drm_display_mode *mode)
{
 struct dw_dsi *dsi = encoder_to_dsi(encoder);
 struct mipi_phy_params phy;
 u32 bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
 u32 req_kHz, act_kHz, lane_byte_clk_kHz;


 memset(&phy, 0, sizeof(phy));
 req_kHz = mode->clock * bpp / dsi->lanes;
 act_kHz = dsi_calc_phy_rate(req_kHz, &phy);
 lane_byte_clk_kHz = act_kHz / 8;

 DRM_DEBUG_DRIVER("Checking mode %ix%i-%i@%i clock: %i...",
   mode->hdisplay, mode->vdisplay, bpp,
   drm_mode_vrefresh(mode), mode->clock);





 if (mode->clock/dsi->lanes == lane_byte_clk_kHz/3) {
  DRM_DEBUG_DRIVER("OK!\n");
  return MODE_OK;
 }

 DRM_DEBUG_DRIVER("BAD!\n");
 return MODE_BAD;
}
