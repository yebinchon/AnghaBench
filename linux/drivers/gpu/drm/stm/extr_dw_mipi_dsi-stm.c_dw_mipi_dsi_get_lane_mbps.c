
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi_stm {int lane_min_kbps; int lane_max_kbps; scalar_t__ hw_version; int pllref_clk; } ;
struct drm_display_mode {int clock; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int,unsigned int) ;
 int DRM_WARN (char*) ;
 int DSI_WCFGR ;
 int DSI_WPCR0 ;
 int DSI_WRPCR ;
 scalar_t__ HWVER_131 ;
 int LANE_MAX_KBPS ;
 int LANE_MIN_KBPS ;
 int WCFGR_COLMUX ;
 int WCFGR_DSIM ;
 int WPCR0_UIX4 ;
 int WRPCR_IDF ;
 int WRPCR_NDIV ;
 int WRPCR_ODF ;
 int clk_get_rate (int ) ;
 int dsi_clear (struct dw_mipi_dsi_stm*,int ,int ) ;
 int dsi_color_from_mipi (int) ;
 unsigned int dsi_pll_get_clkout_khz (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int dsi_pll_get_params (struct dw_mipi_dsi_stm*,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int dsi_update_bits (struct dw_mipi_dsi_stm*,int ,int,int) ;
 int ffs (unsigned int) ;
 int mipi_dsi_pixel_format_to_bpp (int) ;

__attribute__((used)) static int
dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
     unsigned long mode_flags, u32 lanes, u32 format,
     unsigned int *lane_mbps)
{
 struct dw_mipi_dsi_stm *dsi = priv_data;
 unsigned int idf, ndiv, odf, pll_in_khz, pll_out_khz;
 int ret, bpp;
 u32 val;


 dsi->lane_min_kbps = LANE_MIN_KBPS;
 dsi->lane_max_kbps = LANE_MAX_KBPS;
 if (dsi->hw_version == HWVER_131) {
  dsi->lane_min_kbps *= 2;
  dsi->lane_max_kbps *= 2;
 }

 pll_in_khz = (unsigned int)(clk_get_rate(dsi->pllref_clk) / 1000);


 bpp = mipi_dsi_pixel_format_to_bpp(format);
 pll_out_khz = mode->clock * bpp / lanes;

 pll_out_khz = (pll_out_khz * 12) / 10;
 if (pll_out_khz > dsi->lane_max_kbps) {
  pll_out_khz = dsi->lane_max_kbps;
  DRM_WARN("Warning max phy mbps is used\n");
 }
 if (pll_out_khz < dsi->lane_min_kbps) {
  pll_out_khz = dsi->lane_min_kbps;
  DRM_WARN("Warning min phy mbps is used\n");
 }


 idf = 0;
 ndiv = 0;
 odf = 0;
 ret = dsi_pll_get_params(dsi, pll_in_khz, pll_out_khz,
     &idf, &ndiv, &odf);
 if (ret)
  DRM_WARN("Warning dsi_pll_get_params(): bad params\n");


 pll_out_khz = dsi_pll_get_clkout_khz(pll_in_khz, idf, ndiv, odf);


 dsi_update_bits(dsi, DSI_WRPCR, WRPCR_NDIV | WRPCR_IDF | WRPCR_ODF,
   (ndiv << 2) | (idf << 11) | ((ffs(odf) - 1) << 16));


 val = 4000000 / pll_out_khz;
 dsi_update_bits(dsi, DSI_WPCR0, WPCR0_UIX4, val);


 dsi_clear(dsi, DSI_WCFGR, WCFGR_DSIM);


 dsi_update_bits(dsi, DSI_WCFGR, WCFGR_COLMUX,
   dsi_color_from_mipi(format) << 1);

 *lane_mbps = pll_out_khz / 1000;

 DRM_DEBUG_DRIVER("pll_in %ukHz pll_out %ukHz lane_mbps %uMHz\n",
    pll_in_khz, pll_out_khz, *lane_mbps);

 return 0;
}
