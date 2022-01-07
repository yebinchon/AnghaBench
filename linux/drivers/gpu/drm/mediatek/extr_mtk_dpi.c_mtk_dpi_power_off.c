
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {scalar_t__ refcount; int engine_clk; int pixel_clk; } ;


 scalar_t__ WARN_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int mtk_dpi_disable (struct mtk_dpi*) ;

__attribute__((used)) static void mtk_dpi_power_off(struct mtk_dpi *dpi)
{
 if (WARN_ON(dpi->refcount == 0))
  return;

 if (--dpi->refcount != 0)
  return;

 mtk_dpi_disable(dpi);
 clk_disable_unprepare(dpi->pixel_clk);
 clk_disable_unprepare(dpi->engine_clk);
}
