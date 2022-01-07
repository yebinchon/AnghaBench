
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi_sync_param {int sync_width; int back_porch; int front_porch; } ;
struct mtk_dpi {int dummy; } ;


 int DPI_TGEN_HPORCH ;
 int DPI_TGEN_HWIDTH ;
 int HBP ;
 int HBP_MASK ;
 int HFP ;
 int HFP_MASK ;
 int HPW ;
 int HPW_MASK ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_hsync(struct mtk_dpi *dpi,
     struct mtk_dpi_sync_param *sync)
{
 mtk_dpi_mask(dpi, DPI_TGEN_HWIDTH,
       sync->sync_width << HPW, HPW_MASK);
 mtk_dpi_mask(dpi, DPI_TGEN_HPORCH,
       sync->back_porch << HBP, HBP_MASK);
 mtk_dpi_mask(dpi, DPI_TGEN_HPORCH, sync->front_porch << HFP,
       HFP_MASK);
}
