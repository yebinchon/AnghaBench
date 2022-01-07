
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int dummy; } ;


 int DPI_EN ;
 int EN ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dpi_disable(struct mtk_dpi *dpi)
{
 mtk_dpi_mask(dpi, DPI_EN, 0, EN);
}
