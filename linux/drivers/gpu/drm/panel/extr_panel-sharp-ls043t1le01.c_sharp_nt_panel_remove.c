
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_nt_panel {int base; } ;
struct mipi_dsi_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct sharp_nt_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int sharp_nt_panel_del (struct sharp_nt_panel*) ;
 int sharp_nt_panel_disable (int *) ;

__attribute__((used)) static int sharp_nt_panel_remove(struct mipi_dsi_device *dsi)
{
 struct sharp_nt_panel *sharp_nt = mipi_dsi_get_drvdata(dsi);
 int ret;

 ret = sharp_nt_panel_disable(&sharp_nt->base);
 if (ret < 0)
  dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);

 ret = mipi_dsi_detach(dsi);
 if (ret < 0)
  dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);

 sharp_nt_panel_del(sharp_nt);

 return 0;
}
