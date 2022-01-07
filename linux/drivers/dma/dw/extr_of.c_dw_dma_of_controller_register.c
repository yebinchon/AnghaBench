
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct dw_dma {TYPE_1__ dma; } ;
struct device {int of_node; } ;


 int dev_err (struct device*,char*) ;
 int dw_dma_of_xlate ;
 int of_dma_controller_register (int ,int ,struct dw_dma*) ;

void dw_dma_of_controller_register(struct dw_dma *dw)
{
 struct device *dev = dw->dma.dev;
 int ret;

 if (!dev->of_node)
  return;

 ret = of_dma_controller_register(dev->of_node, dw_dma_of_xlate, dw);
 if (ret)
  dev_err(dev, "could not register of_dma_controller\n");
}
