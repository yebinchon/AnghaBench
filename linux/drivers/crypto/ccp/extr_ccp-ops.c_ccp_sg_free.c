
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_sg_workarea {scalar_t__ dma_count; int dma_dir; int nents; int dma_sg; int dma_dev; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static void ccp_sg_free(struct ccp_sg_workarea *wa)
{
 if (wa->dma_count)
  dma_unmap_sg(wa->dma_dev, wa->dma_sg, wa->nents, wa->dma_dir);

 wa->dma_count = 0;
}
