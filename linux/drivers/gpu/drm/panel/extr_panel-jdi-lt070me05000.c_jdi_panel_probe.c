
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int lanes; int mode_flags; int dev; int format; } ;
struct jdi_panel {struct mipi_dsi_device* dsi; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_HSE ;
 struct jdi_panel* devm_kzalloc (int *,int,int ) ;
 int jdi_panel_add (struct jdi_panel*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct jdi_panel*) ;

__attribute__((used)) static int jdi_panel_probe(struct mipi_dsi_device *dsi)
{
 struct jdi_panel *jdi;
 int ret;

 dsi->lanes = 4;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO_HSE | MIPI_DSI_MODE_VIDEO |
      MIPI_DSI_CLOCK_NON_CONTINUOUS;

 jdi = devm_kzalloc(&dsi->dev, sizeof(*jdi), GFP_KERNEL);
 if (!jdi)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, jdi);

 jdi->dsi = dsi;

 ret = jdi_panel_add(jdi);
 if (ret < 0)
  return ret;

 return mipi_dsi_attach(dsi);
}
