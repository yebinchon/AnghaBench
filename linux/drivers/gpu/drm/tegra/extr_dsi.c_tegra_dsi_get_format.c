
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tegra_dsi_format { ____Placeholder_tegra_dsi_format } tegra_dsi_format ;
typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;


 int EINVAL ;




 int TEGRA_DSI_FORMAT_16P ;
 int TEGRA_DSI_FORMAT_18NP ;
 int TEGRA_DSI_FORMAT_18P ;
 int TEGRA_DSI_FORMAT_24P ;

__attribute__((used)) static int tegra_dsi_get_format(enum mipi_dsi_pixel_format format,
    enum tegra_dsi_format *fmt)
{
 switch (format) {
 case 128:
  *fmt = TEGRA_DSI_FORMAT_24P;
  break;

 case 130:
  *fmt = TEGRA_DSI_FORMAT_18NP;
  break;

 case 129:
  *fmt = TEGRA_DSI_FORMAT_18P;
  break;

 case 131:
  *fmt = TEGRA_DSI_FORMAT_16P;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
