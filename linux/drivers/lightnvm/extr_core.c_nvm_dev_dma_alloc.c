
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_dev {int dma_pool; TYPE_1__* ops; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* (* dev_dma_alloc ) (struct nvm_dev*,int ,int ,int *) ;} ;


 void* stub1 (struct nvm_dev*,int ,int ,int *) ;

void *nvm_dev_dma_alloc(struct nvm_dev *dev, gfp_t mem_flags,
       dma_addr_t *dma_handler)
{
 return dev->ops->dev_dma_alloc(dev, dev->dma_pool, mem_flags,
        dma_handler);
}
