
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int channels; } ;
struct ioatdma_device {int completion_pool; struct dma_device dma_dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int dma_async_device_unregister (struct dma_device*) ;
 int dma_pool_destroy (int ) ;
 int ioat_disable_interrupts (struct ioatdma_device*) ;
 int ioat_kobject_del (struct ioatdma_device*) ;

__attribute__((used)) static void ioat_dma_remove(struct ioatdma_device *ioat_dma)
{
 struct dma_device *dma = &ioat_dma->dma_dev;

 ioat_disable_interrupts(ioat_dma);

 ioat_kobject_del(ioat_dma);

 dma_async_device_unregister(dma);

 dma_pool_destroy(ioat_dma->completion_pool);

 INIT_LIST_HEAD(&dma->channels);
}
