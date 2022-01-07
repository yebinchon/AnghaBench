
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dpi {int dummy; } ;
typedef enum mtk_dpi_out_yc_map { ____Placeholder_mtk_dpi_out_yc_map } mtk_dpi_out_yc_map ;


 int DPI_OUTPUT_SETTING ;





 int YC_MAP ;
 int YC_MAP_CY ;
 int YC_MAP_CYCY ;
 int YC_MAP_MASK ;
 int YC_MAP_RGB ;
 int YC_MAP_YC ;
 int YC_MAP_YCYC ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_yc_map(struct mtk_dpi *dpi,
      enum mtk_dpi_out_yc_map map)
{
 u32 val;

 switch (map) {
 case 130:
  val = YC_MAP_RGB;
  break;
 case 131:
  val = YC_MAP_CYCY;
  break;
 case 128:
  val = YC_MAP_YCYC;
  break;
 case 132:
  val = YC_MAP_CY;
  break;
 case 129:
  val = YC_MAP_YC;
  break;
 default:
  val = YC_MAP_RGB;
  break;
 }

 mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << YC_MAP, YC_MAP_MASK);
}
