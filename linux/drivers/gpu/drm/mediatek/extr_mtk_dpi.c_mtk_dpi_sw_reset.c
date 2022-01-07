
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int dummy; } ;


 int DPI_RET ;
 int RST ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dpi_sw_reset(struct mtk_dpi *dpi, bool reset)
{
 mtk_dpi_mask(dpi, DPI_RET, reset ? RST : 0, RST);
}
