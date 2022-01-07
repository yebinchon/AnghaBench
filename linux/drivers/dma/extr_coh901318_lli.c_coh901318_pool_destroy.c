
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_pool {int dmapool; } ;


 int dma_pool_destroy (int ) ;

int coh901318_pool_destroy(struct coh901318_pool *pool)
{

 dma_pool_destroy(pool->dmapool);
 return 0;
}
