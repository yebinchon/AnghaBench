
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_dma {int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct mdc_dma* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_mdc_runtime_suspend(struct device *dev)
{
 struct mdc_dma *mdma = dev_get_drvdata(dev);

 clk_disable_unprepare(mdma->clk);

 return 0;
}
