
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd101t2587_panel {int base; int default_mode; struct mipi_dsi_device* dsi; } ;
struct of_device_id {int data; } ;
struct TYPE_2__ {int of_node; } ;
struct mipi_dsi_device {int lanes; int mode_flags; TYPE_1__ dev; int format; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_EOT_PACKET ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 struct osd101t2587_panel* devm_kzalloc (TYPE_1__*,int,int ) ;
 int drm_panel_remove (int *) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct osd101t2587_panel*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int osd101t2587_of_match ;
 int osd101t2587_panel_add (struct osd101t2587_panel*) ;

__attribute__((used)) static int osd101t2587_panel_probe(struct mipi_dsi_device *dsi)
{
 struct osd101t2587_panel *osd101t2587;
 const struct of_device_id *id;
 int ret;

 id = of_match_node(osd101t2587_of_match, dsi->dev.of_node);
 if (!id)
  return -ENODEV;

 dsi->lanes = 4;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
     MIPI_DSI_MODE_VIDEO_BURST |
     MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
     MIPI_DSI_MODE_EOT_PACKET;

 osd101t2587 = devm_kzalloc(&dsi->dev, sizeof(*osd101t2587), GFP_KERNEL);
 if (!osd101t2587)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, osd101t2587);

 osd101t2587->dsi = dsi;
 osd101t2587->default_mode = id->data;

 ret = osd101t2587_panel_add(osd101t2587);
 if (ret < 0)
  return ret;

 ret = mipi_dsi_attach(dsi);
 if (ret)
  drm_panel_remove(&osd101t2587->base);

 return ret;
}
