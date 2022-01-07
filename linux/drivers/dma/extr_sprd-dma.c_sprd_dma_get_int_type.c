
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dev; } ;
struct sprd_dma_dev {TYPE_2__ dma_dev; } ;
struct TYPE_3__ {int chan; } ;
struct sprd_dma_chn {scalar_t__ chn_base; TYPE_1__ vc; } ;
typedef enum sprd_dma_int_type { ____Placeholder_sprd_dma_int_type } sprd_dma_int_type ;


 int SPRD_DMA_BLK_INT ;

 int SPRD_DMA_CFGERR_INT ;

 scalar_t__ SPRD_DMA_CHN_INTC ;
 int SPRD_DMA_CHN_INT_STS ;
 int SPRD_DMA_FRAG_INT ;

 int SPRD_DMA_LIST_INT ;

 int SPRD_DMA_NO_INT ;
 int SPRD_DMA_TRANS_INT ;

 int dev_warn (int ,char*) ;
 int readl (scalar_t__) ;
 struct sprd_dma_dev* to_sprd_dma_dev (int *) ;

__attribute__((used)) static enum sprd_dma_int_type sprd_dma_get_int_type(struct sprd_dma_chn *schan)
{
 struct sprd_dma_dev *sdev = to_sprd_dma_dev(&schan->vc.chan);
 u32 intc_sts = readl(schan->chn_base + SPRD_DMA_CHN_INTC) &
         SPRD_DMA_CHN_INT_STS;

 switch (intc_sts) {
 case 131:
  return SPRD_DMA_CFGERR_INT;

 case 129:
  return SPRD_DMA_LIST_INT;

 case 128:
  return SPRD_DMA_TRANS_INT;

 case 132:
  return SPRD_DMA_BLK_INT;

 case 130:
  return SPRD_DMA_FRAG_INT;

 default:
  dev_warn(sdev->dma_dev.dev, "incorrect dma interrupt type\n");
  return SPRD_DMA_NO_INT;
 }
}
