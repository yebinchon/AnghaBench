
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dpi {int dummy; } ;
typedef enum mtk_dpi_out_bit_num { ____Placeholder_mtk_dpi_out_bit_num } mtk_dpi_out_bit_num ;


 int DPI_OUTPUT_SETTING ;




 int OUT_BIT ;
 int OUT_BIT_10 ;
 int OUT_BIT_12 ;
 int OUT_BIT_16 ;
 int OUT_BIT_8 ;
 int OUT_BIT_MASK ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_bit_num(struct mtk_dpi *dpi,
       enum mtk_dpi_out_bit_num num)
{
 u32 val;

 switch (num) {
 case 128:
  val = OUT_BIT_8;
  break;
 case 131:
  val = OUT_BIT_10;
  break;
 case 130:
  val = OUT_BIT_12;
  break;
 case 129:
  val = OUT_BIT_16;
  break;
 default:
  val = OUT_BIT_8;
  break;
 }
 mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << OUT_BIT,
       OUT_BIT_MASK);
}
