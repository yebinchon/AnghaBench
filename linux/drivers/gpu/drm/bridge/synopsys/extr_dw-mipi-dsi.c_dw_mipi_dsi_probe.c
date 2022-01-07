
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_mipi_dsi_plat_data {int dummy; } ;
struct dw_mipi_dsi {int dummy; } ;


 struct dw_mipi_dsi* __dw_mipi_dsi_probe (struct platform_device*,struct dw_mipi_dsi_plat_data const*) ;

struct dw_mipi_dsi *
dw_mipi_dsi_probe(struct platform_device *pdev,
    const struct dw_mipi_dsi_plat_data *plat_data)
{
 return __dw_mipi_dsi_probe(pdev, plat_data);
}
