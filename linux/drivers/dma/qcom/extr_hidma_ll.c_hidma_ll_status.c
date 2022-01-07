
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct hidma_tre {int err_code; } ;
struct hidma_lldev {int lock; struct hidma_tre* trepool; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;


 int DMA_COMPLETE ;
 int DMA_ERROR ;
 int DMA_IN_PROGRESS ;
 int HIDMA_EVRE_STATUS_COMPLETE ;
 int HIDMA_EVRE_STATUS_ERROR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum dma_status hidma_ll_status(struct hidma_lldev *lldev, u32 tre_ch)
{
 enum dma_status ret = DMA_ERROR;
 struct hidma_tre *tre;
 unsigned long flags;
 u8 err_code;

 spin_lock_irqsave(&lldev->lock, flags);

 tre = &lldev->trepool[tre_ch];
 err_code = tre->err_code;

 if (err_code & HIDMA_EVRE_STATUS_COMPLETE)
  ret = DMA_COMPLETE;
 else if (err_code & HIDMA_EVRE_STATUS_ERROR)
  ret = DMA_ERROR;
 else
  ret = DMA_IN_PROGRESS;
 spin_unlock_irqrestore(&lldev->lock, flags);

 return ret;
}
