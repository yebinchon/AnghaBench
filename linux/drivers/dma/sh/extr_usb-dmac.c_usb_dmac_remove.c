
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_dmac {int n_channels; int engine; int * channels; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct usb_dmac* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int usb_dmac_chan_remove (struct usb_dmac*,int *) ;

__attribute__((used)) static int usb_dmac_remove(struct platform_device *pdev)
{
 struct usb_dmac *dmac = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < dmac->n_channels; ++i)
  usb_dmac_chan_remove(dmac, &dmac->channels[i]);
 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&dmac->engine);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
