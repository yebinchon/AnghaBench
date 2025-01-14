
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videomode {unsigned int pixelclock; int flags; int vactive; int hactive; int vfront_porch; int vback_porch; int vsync_len; int hfront_porch; int hback_porch; int hsync_len; int member_0; } ;
struct mtk_dpi_yc_limit {int c_bottom; int c_top; int y_bottom; int y_top; } ;
struct mtk_dpi_sync_param {int shift_half_line; int front_porch; int back_porch; int sync_width; int member_0; } ;
struct mtk_dpi_polarities {void* vsync_pol; void* hsync_pol; void* de_pol; void* ck_pol; } ;
struct mtk_dpi {int color_format; int yc_map; int channel_swap; int bit_num; int dev; int pixel_clk; int tvd_clk; TYPE_1__* conf; } ;
struct drm_display_mode {int flags; int clock; } ;
struct TYPE_2__ {unsigned int (* cal_factor ) (int ) ;} ;


 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_INTERLACED ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int DRM_MODE_FLAG_3D_MASK ;
 void* MTK_DPI_POLARITY_FALLING ;
 void* MTK_DPI_POLARITY_RISING ;
 void* clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_dbg (int ,char*,unsigned long,unsigned int) ;
 int drm_display_mode_to_videomode (struct drm_display_mode*,struct videomode*) ;
 int mtk_dpi_config_2n_h_fre (struct mtk_dpi*) ;
 int mtk_dpi_config_3d (struct mtk_dpi*,int) ;
 int mtk_dpi_config_bit_num (struct mtk_dpi*,int ) ;
 int mtk_dpi_config_channel_limit (struct mtk_dpi*,struct mtk_dpi_yc_limit*) ;
 int mtk_dpi_config_channel_swap (struct mtk_dpi*,int ) ;
 int mtk_dpi_config_color_format (struct mtk_dpi*,int ) ;
 int mtk_dpi_config_disable_edge (struct mtk_dpi*) ;
 int mtk_dpi_config_fb_size (struct mtk_dpi*,int ,int) ;
 int mtk_dpi_config_hsync (struct mtk_dpi*,struct mtk_dpi_sync_param*) ;
 int mtk_dpi_config_interface (struct mtk_dpi*,int) ;
 int mtk_dpi_config_pol (struct mtk_dpi*,struct mtk_dpi_polarities*) ;
 int mtk_dpi_config_vsync_leven (struct mtk_dpi*,struct mtk_dpi_sync_param*) ;
 int mtk_dpi_config_vsync_lodd (struct mtk_dpi*,struct mtk_dpi_sync_param*) ;
 int mtk_dpi_config_vsync_reven (struct mtk_dpi*,struct mtk_dpi_sync_param*) ;
 int mtk_dpi_config_vsync_rodd (struct mtk_dpi*,struct mtk_dpi_sync_param*) ;
 int mtk_dpi_config_yc_map (struct mtk_dpi*,int ) ;
 int mtk_dpi_sw_reset (struct mtk_dpi*,int) ;
 unsigned int stub1 (int ) ;

__attribute__((used)) static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
        struct drm_display_mode *mode)
{
 struct mtk_dpi_yc_limit limit;
 struct mtk_dpi_polarities dpi_pol;
 struct mtk_dpi_sync_param hsync;
 struct mtk_dpi_sync_param vsync_lodd = { 0 };
 struct mtk_dpi_sync_param vsync_leven = { 0 };
 struct mtk_dpi_sync_param vsync_rodd = { 0 };
 struct mtk_dpi_sync_param vsync_reven = { 0 };
 struct videomode vm = { 0 };
 unsigned long pll_rate;
 unsigned int factor;


 factor = dpi->conf->cal_factor(mode->clock);
 drm_display_mode_to_videomode(mode, &vm);
 pll_rate = vm.pixelclock * factor;

 dev_dbg(dpi->dev, "Want PLL %lu Hz, pixel clock %lu Hz\n",
  pll_rate, vm.pixelclock);

 clk_set_rate(dpi->tvd_clk, pll_rate);
 pll_rate = clk_get_rate(dpi->tvd_clk);

 vm.pixelclock = pll_rate / factor;
 clk_set_rate(dpi->pixel_clk, vm.pixelclock);
 vm.pixelclock = clk_get_rate(dpi->pixel_clk);

 dev_dbg(dpi->dev, "Got  PLL %lu Hz, pixel clock %lu Hz\n",
  pll_rate, vm.pixelclock);

 limit.c_bottom = 0x0010;
 limit.c_top = 0x0FE0;
 limit.y_bottom = 0x0010;
 limit.y_top = 0x0FE0;

 dpi_pol.ck_pol = MTK_DPI_POLARITY_FALLING;
 dpi_pol.de_pol = MTK_DPI_POLARITY_RISING;
 dpi_pol.hsync_pol = vm.flags & DISPLAY_FLAGS_HSYNC_HIGH ?
       MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
 dpi_pol.vsync_pol = vm.flags & DISPLAY_FLAGS_VSYNC_HIGH ?
       MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
 hsync.sync_width = vm.hsync_len;
 hsync.back_porch = vm.hback_porch;
 hsync.front_porch = vm.hfront_porch;
 hsync.shift_half_line = 0;
 vsync_lodd.sync_width = vm.vsync_len;
 vsync_lodd.back_porch = vm.vback_porch;
 vsync_lodd.front_porch = vm.vfront_porch;
 vsync_lodd.shift_half_line = 0;

 if (vm.flags & DISPLAY_FLAGS_INTERLACED &&
     mode->flags & DRM_MODE_FLAG_3D_MASK) {
  vsync_leven = vsync_lodd;
  vsync_rodd = vsync_lodd;
  vsync_reven = vsync_lodd;
  vsync_leven.shift_half_line = 1;
  vsync_reven.shift_half_line = 1;
 } else if (vm.flags & DISPLAY_FLAGS_INTERLACED &&
     !(mode->flags & DRM_MODE_FLAG_3D_MASK)) {
  vsync_leven = vsync_lodd;
  vsync_leven.shift_half_line = 1;
 } else if (!(vm.flags & DISPLAY_FLAGS_INTERLACED) &&
     mode->flags & DRM_MODE_FLAG_3D_MASK) {
  vsync_rodd = vsync_lodd;
 }
 mtk_dpi_sw_reset(dpi, 1);
 mtk_dpi_config_pol(dpi, &dpi_pol);

 mtk_dpi_config_hsync(dpi, &hsync);
 mtk_dpi_config_vsync_lodd(dpi, &vsync_lodd);
 mtk_dpi_config_vsync_rodd(dpi, &vsync_rodd);
 mtk_dpi_config_vsync_leven(dpi, &vsync_leven);
 mtk_dpi_config_vsync_reven(dpi, &vsync_reven);

 mtk_dpi_config_3d(dpi, !!(mode->flags & DRM_MODE_FLAG_3D_MASK));
 mtk_dpi_config_interface(dpi, !!(vm.flags &
      DISPLAY_FLAGS_INTERLACED));
 if (vm.flags & DISPLAY_FLAGS_INTERLACED)
  mtk_dpi_config_fb_size(dpi, vm.hactive, vm.vactive >> 1);
 else
  mtk_dpi_config_fb_size(dpi, vm.hactive, vm.vactive);

 mtk_dpi_config_channel_limit(dpi, &limit);
 mtk_dpi_config_bit_num(dpi, dpi->bit_num);
 mtk_dpi_config_channel_swap(dpi, dpi->channel_swap);
 mtk_dpi_config_yc_map(dpi, dpi->yc_map);
 mtk_dpi_config_color_format(dpi, dpi->color_format);
 mtk_dpi_config_2n_h_fre(dpi);
 mtk_dpi_config_disable_edge(dpi);
 mtk_dpi_sw_reset(dpi, 0);

 return 0;
}
