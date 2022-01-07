
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {int completion_pool; int dma_dev; } ;


 int dma_async_device_register (int *) ;
 int dma_pool_destroy (int ) ;
 int ioat_disable_interrupts (struct ioatdma_device*) ;

__attribute__((used)) static int ioat_register(struct ioatdma_device *ioat_dma)
{
 int err = dma_async_device_register(&ioat_dma->dma_dev);

 if (err) {
  ioat_disable_interrupts(ioat_dma);
  dma_pool_destroy(ioat_dma->completion_pool);
 }

 return err;
}
