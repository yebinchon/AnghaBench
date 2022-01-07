
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 int panel_simple_remove (int *) ;

__attribute__((used)) static int panel_simple_dsi_remove(struct mipi_dsi_device *dsi)
{
 int err;

 err = mipi_dsi_detach(dsi);
 if (err < 0)
  dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", err);

 return panel_simple_remove(&dsi->dev);
}
