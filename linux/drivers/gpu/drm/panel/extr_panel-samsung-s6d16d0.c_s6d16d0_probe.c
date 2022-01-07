
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * funcs; struct device* dev; } ;
struct s6d16d0 {TYPE_1__ panel; int reset_gpio; int supply; struct device* dev; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int hs_rate; int lp_rate; int mode_flags; int format; struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_EOT_PACKET ;
 int PTR_ERR (int ) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct s6d16d0* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int drm_panel_remove (TYPE_1__*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct s6d16d0*) ;
 int s6d16d0_drm_funcs ;

__attribute__((used)) static int s6d16d0_probe(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct s6d16d0 *s6;
 int ret;

 s6 = devm_kzalloc(dev, sizeof(struct s6d16d0), GFP_KERNEL);
 if (!s6)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, s6);
 s6->dev = dev;

 dsi->lanes = 2;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->hs_rate = 420160000;
 dsi->lp_rate = 19200000;







 dsi->mode_flags =
  MIPI_DSI_CLOCK_NON_CONTINUOUS |
  MIPI_DSI_MODE_EOT_PACKET;

 s6->supply = devm_regulator_get(dev, "vdd1");
 if (IS_ERR(s6->supply))
  return PTR_ERR(s6->supply);


 s6->reset_gpio = devm_gpiod_get_optional(dev, "reset",
       GPIOD_OUT_HIGH);
 if (IS_ERR(s6->reset_gpio)) {
  ret = PTR_ERR(s6->reset_gpio);
  if (ret != -EPROBE_DEFER)
   DRM_DEV_ERROR(dev, "failed to request GPIO (%d)\n",
          ret);
  return ret;
 }

 drm_panel_init(&s6->panel);
 s6->panel.dev = dev;
 s6->panel.funcs = &s6d16d0_drm_funcs;

 ret = drm_panel_add(&s6->panel);
 if (ret < 0)
  return ret;

 ret = mipi_dsi_attach(dsi);
 if (ret < 0)
  drm_panel_remove(&s6->panel);

 return ret;
}
