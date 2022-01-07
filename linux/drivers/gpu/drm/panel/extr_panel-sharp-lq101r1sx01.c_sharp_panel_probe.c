
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sharp_panel {struct mipi_dsi_device* link1; struct mipi_dsi_device* link2; } ;
struct TYPE_3__ {int of_node; } ;
struct mipi_dsi_device {int lanes; TYPE_1__ dev; int mode_flags; int format; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_LPM ;
 struct sharp_panel* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct sharp_panel*) ;
 struct mipi_dsi_device* of_find_mipi_dsi_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int put_device (TYPE_1__*) ;
 int sharp_panel_add (struct sharp_panel*) ;
 int sharp_panel_del (struct sharp_panel*) ;

__attribute__((used)) static int sharp_panel_probe(struct mipi_dsi_device *dsi)
{
 struct mipi_dsi_device *secondary = ((void*)0);
 struct sharp_panel *sharp;
 struct device_node *np;
 int err;

 dsi->lanes = 4;
 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_LPM;


 np = of_parse_phandle(dsi->dev.of_node, "link2", 0);
 if (np) {
  secondary = of_find_mipi_dsi_device_by_node(np);
  of_node_put(np);

  if (!secondary)
   return -EPROBE_DEFER;
 }


 if (secondary) {
  sharp = devm_kzalloc(&dsi->dev, sizeof(*sharp), GFP_KERNEL);
  if (!sharp) {
   put_device(&secondary->dev);
   return -ENOMEM;
  }

  mipi_dsi_set_drvdata(dsi, sharp);

  sharp->link2 = secondary;
  sharp->link1 = dsi;

  err = sharp_panel_add(sharp);
  if (err < 0) {
   put_device(&secondary->dev);
   return err;
  }
 }

 err = mipi_dsi_attach(dsi);
 if (err < 0) {
  if (secondary)
   sharp_panel_del(sharp);

  return err;
 }

 return 0;
}
