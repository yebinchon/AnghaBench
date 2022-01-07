
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;


 int EINVAL ;





__attribute__((used)) static int tegra_dsi_get_muldiv(enum mipi_dsi_pixel_format format,
    unsigned int *mulp, unsigned int *divp)
{
 switch (format) {
 case 129:
 case 128:
  *mulp = 3;
  *divp = 1;
  break;

 case 131:
  *mulp = 2;
  *divp = 1;
  break;

 case 130:
  *mulp = 9;
  *divp = 4;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
