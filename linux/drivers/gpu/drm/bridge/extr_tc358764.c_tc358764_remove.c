
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int bridge; } ;
struct mipi_dsi_device {int dummy; } ;


 int drm_bridge_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct tc358764* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int tc358764_remove(struct mipi_dsi_device *dsi)
{
 struct tc358764 *ctx = mipi_dsi_get_drvdata(dsi);

 mipi_dsi_detach(dsi);
 drm_bridge_remove(&ctx->bridge);

 return 0;
}
