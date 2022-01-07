
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wuxga_nt_panel {struct mipi_dsi_device* dsi; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int dev; int format; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_HSE ;
 struct wuxga_nt_panel* devm_kzalloc (int *,int,int ) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct wuxga_nt_panel*) ;
 int wuxga_nt_panel_add (struct wuxga_nt_panel*) ;

__attribute__((used)) static int wuxga_nt_panel_probe(struct mipi_dsi_device *dsi)
{
 struct wuxga_nt_panel *wuxga_nt;
 int ret;

 dsi->lanes = 4;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
   MIPI_DSI_MODE_VIDEO_HSE |
   MIPI_DSI_CLOCK_NON_CONTINUOUS |
   MIPI_DSI_MODE_LPM;

 wuxga_nt = devm_kzalloc(&dsi->dev, sizeof(*wuxga_nt), GFP_KERNEL);
 if (!wuxga_nt)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, wuxga_nt);

 wuxga_nt->dsi = dsi;

 ret = wuxga_nt_panel_add(wuxga_nt);
 if (ret < 0)
  return ret;

 return mipi_dsi_attach(dsi);
}
