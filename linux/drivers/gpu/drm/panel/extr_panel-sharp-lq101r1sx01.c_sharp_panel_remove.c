
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_panel {int base; } ;
struct mipi_dsi_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct sharp_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int sharp_panel_del (struct sharp_panel*) ;
 int sharp_panel_disable (int *) ;

__attribute__((used)) static int sharp_panel_remove(struct mipi_dsi_device *dsi)
{
 struct sharp_panel *sharp = mipi_dsi_get_drvdata(dsi);
 int err;


 if (!sharp) {
  mipi_dsi_detach(dsi);
  return 0;
 }

 err = sharp_panel_disable(&sharp->base);
 if (err < 0)
  dev_err(&dsi->dev, "failed to disable panel: %d\n", err);

 err = mipi_dsi_detach(dsi);
 if (err < 0)
  dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", err);

 sharp_panel_del(sharp);

 return 0;
}
