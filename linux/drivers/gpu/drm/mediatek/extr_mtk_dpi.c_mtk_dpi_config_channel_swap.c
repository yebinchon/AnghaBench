
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dpi {int dummy; } ;
typedef enum mtk_dpi_out_channel_swap { ____Placeholder_mtk_dpi_out_channel_swap } mtk_dpi_out_channel_swap ;


 int CH_SWAP ;
 int CH_SWAP_MASK ;
 int DPI_OUTPUT_SETTING ;






 int SWAP_BGR ;
 int SWAP_BRG ;
 int SWAP_GBR ;
 int SWAP_GRB ;
 int SWAP_RBG ;
 int SWAP_RGB ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_channel_swap(struct mtk_dpi *dpi,
     enum mtk_dpi_out_channel_swap swap)
{
 u32 val;

 switch (swap) {
 case 128:
  val = SWAP_RGB;
  break;
 case 131:
  val = SWAP_GBR;
  break;
 case 132:
  val = SWAP_BRG;
  break;
 case 129:
  val = SWAP_RBG;
  break;
 case 130:
  val = SWAP_GRB;
  break;
 case 133:
  val = SWAP_BGR;
  break;
 default:
  val = SWAP_RGB;
  break;
 }

 mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << CH_SWAP, CH_SWAP_MASK);
}
