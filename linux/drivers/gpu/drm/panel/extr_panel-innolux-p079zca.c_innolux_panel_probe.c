
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_desc {int lanes; int format; int flags; } ;
struct mipi_dsi_device {int lanes; int format; int mode_flags; int dev; } ;


 int innolux_panel_add (struct mipi_dsi_device*,struct panel_desc const*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 struct panel_desc* of_device_get_match_data (int *) ;

__attribute__((used)) static int innolux_panel_probe(struct mipi_dsi_device *dsi)
{
 const struct panel_desc *desc;
 int err;

 desc = of_device_get_match_data(&dsi->dev);
 dsi->mode_flags = desc->flags;
 dsi->format = desc->format;
 dsi->lanes = desc->lanes;

 err = innolux_panel_add(dsi, desc);
 if (err < 0)
  return err;

 return mipi_dsi_attach(dsi);
}
