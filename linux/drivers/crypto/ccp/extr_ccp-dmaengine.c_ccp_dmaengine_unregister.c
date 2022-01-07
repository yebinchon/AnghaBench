
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int dummy; } ;
struct ccp_device {int dma_cmd_cache; int dma_desc_cache; struct dma_device dma_dev; } ;


 int dma_async_device_unregister (struct dma_device*) ;
 int dmaengine ;
 int kmem_cache_destroy (int ) ;

void ccp_dmaengine_unregister(struct ccp_device *ccp)
{
 struct dma_device *dma_dev = &ccp->dma_dev;

 if (!dmaengine)
  return;

 dma_async_device_unregister(dma_dev);

 kmem_cache_destroy(ccp->dma_desc_cache);
 kmem_cache_destroy(ccp->dma_cmd_cache);
}
