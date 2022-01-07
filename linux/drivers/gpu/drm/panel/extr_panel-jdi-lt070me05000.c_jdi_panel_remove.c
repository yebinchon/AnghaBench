
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;
struct jdi_panel {int base; } ;


 int dev_err (int *,char*,int) ;
 int jdi_panel_del (struct jdi_panel*) ;
 int jdi_panel_disable (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct jdi_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int jdi_panel_remove(struct mipi_dsi_device *dsi)
{
 struct jdi_panel *jdi = mipi_dsi_get_drvdata(dsi);
 int ret;

 ret = jdi_panel_disable(&jdi->base);
 if (ret < 0)
  dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);

 ret = mipi_dsi_detach(dsi);
 if (ret < 0)
  dev_err(&dsi->dev, "failed to detach from DSI host: %d\n",
   ret);

 jdi_panel_del(jdi);

 return 0;
}
