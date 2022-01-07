
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct dw_mipi_dsi_rockchip {struct device* dev; } ;
struct device {int dummy; } ;


 int IS_ERR (struct device*) ;
 int component_del (struct device*,int *) ;
 struct device* dw_mipi_dsi_rockchip_find_second (struct dw_mipi_dsi_rockchip*) ;
 int dw_mipi_dsi_rockchip_ops ;

__attribute__((used)) static int dw_mipi_dsi_rockchip_host_detach(void *priv_data,
         struct mipi_dsi_device *device)
{
 struct dw_mipi_dsi_rockchip *dsi = priv_data;
 struct device *second;

 second = dw_mipi_dsi_rockchip_find_second(dsi);
 if (second && !IS_ERR(second))
  component_del(second, &dw_mipi_dsi_rockchip_ops);

 component_del(dsi->dev, &dw_mipi_dsi_rockchip_ops);

 return 0;
}
