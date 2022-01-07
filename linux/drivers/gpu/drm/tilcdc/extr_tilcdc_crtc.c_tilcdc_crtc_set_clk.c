
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tilcdc_drm_private {int rev; int clk; } ;
struct tilcdc_crtc {unsigned long lcd_fck_rate; } ;
struct drm_device {int dev; struct tilcdc_drm_private* dev_private; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc {TYPE_1__ mode; struct drm_device* dev; } ;


 int DBG (char*,unsigned long,int,unsigned int) ;
 unsigned int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int LCDC_CLK_DIVISOR (unsigned int) ;
 int LCDC_CLK_ENABLE_REG ;
 int LCDC_CTRL_REG ;
 int LCDC_RASTER_MODE ;
 int LCDC_V2_CORE_CLK_EN ;
 int LCDC_V2_DMA_CLK_EN ;
 int LCDC_V2_LIDD_CLK_EN ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,unsigned long,unsigned long) ;
 int tilcdc_pclk_diff (unsigned long,unsigned long) ;
 int tilcdc_set (struct drm_device*,int ,int) ;
 int tilcdc_write (struct drm_device*,int ,int) ;
 struct tilcdc_crtc* to_tilcdc_crtc (struct drm_crtc*) ;

__attribute__((used)) static void tilcdc_crtc_set_clk(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct tilcdc_drm_private *priv = dev->dev_private;
 struct tilcdc_crtc *tilcdc_crtc = to_tilcdc_crtc(crtc);
 unsigned long clk_rate, real_rate, req_rate;
 unsigned int clkdiv;
 int ret;

 clkdiv = 2;


 req_rate = crtc->mode.clock * 1000;

 ret = clk_set_rate(priv->clk, req_rate * clkdiv);
 clk_rate = clk_get_rate(priv->clk);
 if (ret < 0 || tilcdc_pclk_diff(req_rate, clk_rate) > 5) {







  if (!clk_rate) {

   dev_err(dev->dev,
    "failed to set the pixel clock - unable to read current lcdc clock rate\n");
   return;
  }

  clkdiv = DIV_ROUND_CLOSEST(clk_rate, req_rate);
  real_rate = clkdiv * req_rate;

  if (tilcdc_pclk_diff(clk_rate, real_rate) > 5) {
   dev_warn(dev->dev,
     "effective pixel clock rate (%luHz) differs from the calculated rate (%luHz)\n",
     clk_rate, real_rate);
  }
 }

 tilcdc_crtc->lcd_fck_rate = clk_rate;

 DBG("lcd_clk=%u, mode clock=%d, div=%u",
     tilcdc_crtc->lcd_fck_rate, crtc->mode.clock, clkdiv);


 tilcdc_write(dev, LCDC_CTRL_REG, LCDC_CLK_DIVISOR(clkdiv) |
       LCDC_RASTER_MODE);

 if (priv->rev == 2)
  tilcdc_set(dev, LCDC_CLK_ENABLE_REG,
    LCDC_V2_DMA_CLK_EN | LCDC_V2_LIDD_CLK_EN |
    LCDC_V2_CORE_CLK_EN);
}
