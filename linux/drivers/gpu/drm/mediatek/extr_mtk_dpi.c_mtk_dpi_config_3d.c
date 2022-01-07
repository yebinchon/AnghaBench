
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int dummy; } ;


 int DPI_CON ;
 int TDFP_EN ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dpi_config_3d(struct mtk_dpi *dpi, bool en_3d)
{
 mtk_dpi_mask(dpi, DPI_CON, en_3d ? TDFP_EN : 0, TDFP_EN);
}
