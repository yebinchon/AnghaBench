
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vou_hw {int ppu_clk; int axi_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct zx_vou_hw* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void zx_crtc_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct zx_vou_hw *vou = dev_get_drvdata(dev);

 clk_disable_unprepare(vou->axi_clk);
 clk_disable_unprepare(vou->ppu_clk);
}
