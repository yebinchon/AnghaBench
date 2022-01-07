
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int dummy; } ;


 int DPI_CON ;
 int IN_RB_SWAP ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dpi_config_swap_input(struct mtk_dpi *dpi, bool enable)
{
 mtk_dpi_mask(dpi, DPI_CON, enable ? IN_RB_SWAP : 0, IN_RB_SWAP);
}
