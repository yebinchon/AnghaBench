
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct dw_dma {TYPE_1__ dma; } ;
struct device {int of_node; } ;


 int of_dma_controller_free (int ) ;

void dw_dma_of_controller_free(struct dw_dma *dw)
{
 struct device *dev = dw->dma.dev;

 if (!dev->of_node)
  return;

 of_dma_controller_free(dev->of_node);
}
