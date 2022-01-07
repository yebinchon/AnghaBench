
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ address; int dir; } ;
struct ccp_dm_workarea {scalar_t__ length; TYPE_1__ dma; int * address; int dev; int dma_pool; } ;


 scalar_t__ CCP_DMAPOOL_MAX_SIZE ;
 int dma_pool_free (int ,int *,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void ccp_dm_free(struct ccp_dm_workarea *wa)
{
 if (wa->length <= CCP_DMAPOOL_MAX_SIZE) {
  if (wa->address)
   dma_pool_free(wa->dma_pool, wa->address,
          wa->dma.address);
 } else {
  if (wa->dma.address)
   dma_unmap_single(wa->dev, wa->dma.address, wa->length,
      wa->dma.dir);
  kfree(wa->address);
 }

 wa->address = ((void*)0);
 wa->dma.address = 0;
}
