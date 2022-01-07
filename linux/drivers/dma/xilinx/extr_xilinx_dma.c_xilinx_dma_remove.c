
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xilinx_dma_device {int nr_channels; scalar_t__* chan; int common; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct xilinx_dma_device* platform_get_drvdata (struct platform_device*) ;
 int xdma_disable_allclks (struct xilinx_dma_device*) ;
 int xilinx_dma_chan_remove (scalar_t__) ;

__attribute__((used)) static int xilinx_dma_remove(struct platform_device *pdev)
{
 struct xilinx_dma_device *xdev = platform_get_drvdata(pdev);
 int i;

 of_dma_controller_free(pdev->dev.of_node);

 dma_async_device_unregister(&xdev->common);

 for (i = 0; i < xdev->nr_channels; i++)
  if (xdev->chan[i])
   xilinx_dma_chan_remove(xdev->chan[i]);

 xdma_disable_allclks(xdev);

 return 0;
}
