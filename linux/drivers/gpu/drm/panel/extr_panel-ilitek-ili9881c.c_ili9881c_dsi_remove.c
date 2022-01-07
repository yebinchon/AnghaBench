
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_device {int dummy; } ;
struct ili9881c {TYPE_1__* backlight; int panel; } ;
struct TYPE_2__ {int dev; } ;


 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct ili9881c* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int put_device (int *) ;

__attribute__((used)) static int ili9881c_dsi_remove(struct mipi_dsi_device *dsi)
{
 struct ili9881c *ctx = mipi_dsi_get_drvdata(dsi);

 mipi_dsi_detach(dsi);
 drm_panel_remove(&ctx->panel);

 if (ctx->backlight)
  put_device(&ctx->backlight->dev);

 return 0;
}
