
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_dev {int dma_pool; TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* dev_dma_free ) (int ,void*,int ) ;} ;


 int stub1 (int ,void*,int ) ;

void nvm_dev_dma_free(struct nvm_dev *dev, void *addr, dma_addr_t dma_handler)
{
 dev->ops->dev_dma_free(dev->dma_pool, addr, dma_handler);
}
