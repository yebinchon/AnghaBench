
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_chn {int dummy; } ;


 int SPRD_DMA_CHN_REQ ;
 int SPRD_DMA_REQ_EN ;
 int sprd_dma_chn_update (struct sprd_dma_chn*,int ,int ,int ) ;

__attribute__((used)) static void sprd_dma_soft_request(struct sprd_dma_chn *schan)
{
 sprd_dma_chn_update(schan, SPRD_DMA_CHN_REQ, SPRD_DMA_REQ_EN,
       SPRD_DMA_REQ_EN);
}
