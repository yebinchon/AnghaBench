
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_panel {int panel; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct rad_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int rad_panel_remove(struct mipi_dsi_device *dsi)
{
 struct rad_panel *rad = mipi_dsi_get_drvdata(dsi);
 struct device *dev = &dsi->dev;
 int ret;

 ret = mipi_dsi_detach(dsi);
 if (ret)
  DRM_DEV_ERROR(dev, "Failed to detach from host (%d)\n",
         ret);

 drm_panel_remove(&rad->panel);

 return 0;
}
