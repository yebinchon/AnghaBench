
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_device {int lanes; } ;
struct drm_display_mode {unsigned int hsync_end; unsigned int hsync_start; unsigned int hdisplay; int htotal; unsigned int vsync_end; unsigned int vsync_start; unsigned int vdisplay; int vtotal; } ;
struct adv7511 {int regmap_cec; struct drm_display_mode curr_mode; struct mipi_dsi_device* dsi; } ;


 int regmap_write (int ,int,unsigned int) ;

__attribute__((used)) static void adv7511_dsi_config_timing_gen(struct adv7511 *adv)
{
 struct mipi_dsi_device *dsi = adv->dsi;
 struct drm_display_mode *mode = &adv->curr_mode;
 unsigned int hsw, hfp, hbp, vsw, vfp, vbp;
 u8 clock_div_by_lanes[] = { 6, 4, 3 };

 hsw = mode->hsync_end - mode->hsync_start;
 hfp = mode->hsync_start - mode->hdisplay;
 hbp = mode->htotal - mode->hsync_end;
 vsw = mode->vsync_end - mode->vsync_start;
 vfp = mode->vsync_start - mode->vdisplay;
 vbp = mode->vtotal - mode->vsync_end;


 regmap_write(adv->regmap_cec, 0x16,
       clock_div_by_lanes[dsi->lanes - 2] << 3);


 regmap_write(adv->regmap_cec, 0x28, mode->htotal >> 4);
 regmap_write(adv->regmap_cec, 0x29, (mode->htotal << 4) & 0xff);
 regmap_write(adv->regmap_cec, 0x2a, hsw >> 4);
 regmap_write(adv->regmap_cec, 0x2b, (hsw << 4) & 0xff);
 regmap_write(adv->regmap_cec, 0x2c, hfp >> 4);
 regmap_write(adv->regmap_cec, 0x2d, (hfp << 4) & 0xff);
 regmap_write(adv->regmap_cec, 0x2e, hbp >> 4);
 regmap_write(adv->regmap_cec, 0x2f, (hbp << 4) & 0xff);


 regmap_write(adv->regmap_cec, 0x30, mode->vtotal >> 4);
 regmap_write(adv->regmap_cec, 0x31, (mode->vtotal << 4) & 0xff);
 regmap_write(adv->regmap_cec, 0x32, vsw >> 4);
 regmap_write(adv->regmap_cec, 0x33, (vsw << 4) & 0xff);
 regmap_write(adv->regmap_cec, 0x34, vfp >> 4);
 regmap_write(adv->regmap_cec, 0x35, (vfp << 4) & 0xff);
 regmap_write(adv->regmap_cec, 0x36, vbp >> 4);
 regmap_write(adv->regmap_cec, 0x37, (vbp << 4) & 0xff);
}
