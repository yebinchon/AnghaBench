
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;


 int DSI_24BITS_1 ;


__attribute__((used)) static u32 dsi_get_dpi_color_coding(enum mipi_dsi_pixel_format format)
{
 u32 val;




 switch (format) {
 case 128:
  val = DSI_24BITS_1;
  break;
 default:
  val = DSI_24BITS_1;
  break;
 }

 return val;
}
