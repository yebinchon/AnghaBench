
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int * ctx_pool; } ;


 int dma_pool_destroy (int *) ;

__attribute__((used)) static void destroy_crypto_dma_pool(struct nitrox_device *ndev)
{
 if (!ndev->ctx_pool)
  return;

 dma_pool_destroy(ndev->ctx_pool);
 ndev->ctx_pool = ((void*)0);
}
