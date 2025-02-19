
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int refcount; int engine_clk; int dev; int pixel_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int mtk_dpi_enable (struct mtk_dpi*) ;

__attribute__((used)) static int mtk_dpi_power_on(struct mtk_dpi *dpi)
{
 int ret;

 if (++dpi->refcount != 1)
  return 0;

 ret = clk_prepare_enable(dpi->engine_clk);
 if (ret) {
  dev_err(dpi->dev, "Failed to enable engine clock: %d\n", ret);
  goto err_refcount;
 }

 ret = clk_prepare_enable(dpi->pixel_clk);
 if (ret) {
  dev_err(dpi->dev, "Failed to enable pixel clock: %d\n", ret);
  goto err_pixel;
 }

 mtk_dpi_enable(dpi);
 return 0;

err_pixel:
 clk_disable_unprepare(dpi->engine_clk);
err_refcount:
 dpi->refcount--;
 return ret;
}
