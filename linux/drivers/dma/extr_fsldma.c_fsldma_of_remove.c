
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fsldma_device {int regs; scalar_t__* chan; int common; } ;


 unsigned int FSL_DMA_MAX_CHANS_PER_DEVICE ;
 int dma_async_device_unregister (int *) ;
 int fsl_dma_chan_remove (scalar_t__) ;
 int fsldma_free_irqs (struct fsldma_device*) ;
 int iounmap (int ) ;
 int kfree (struct fsldma_device*) ;
 struct fsldma_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsldma_of_remove(struct platform_device *op)
{
 struct fsldma_device *fdev;
 unsigned int i;

 fdev = platform_get_drvdata(op);
 dma_async_device_unregister(&fdev->common);

 fsldma_free_irqs(fdev);

 for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
  if (fdev->chan[i])
   fsl_dma_chan_remove(fdev->chan[i]);
 }

 iounmap(fdev->regs);
 kfree(fdev);

 return 0;
}
