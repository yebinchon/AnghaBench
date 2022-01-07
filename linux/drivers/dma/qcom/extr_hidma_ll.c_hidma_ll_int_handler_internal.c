
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidma_lldev {int lock; scalar_t__ evca; int dev; } ;


 int HIDMA_ERR_INT_MASK ;
 scalar_t__ HIDMA_EVCA_IRQ_CLR_REG ;
 int HIDMA_EVRE_STATUS_ERROR ;
 int dev_err (int ,char*,int) ;
 int hidma_cleanup_pending_tre (struct hidma_lldev*,int,int ) ;
 int hidma_handle_tre_completion (struct hidma_lldev*) ;
 int hidma_ll_disable (struct hidma_lldev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hidma_ll_int_handler_internal(struct hidma_lldev *lldev, int cause)
{
 unsigned long irqflags;

 if (cause & HIDMA_ERR_INT_MASK) {
  dev_err(lldev->dev, "error 0x%x, disabling...\n",
    cause);


  writel(cause, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);


  hidma_ll_disable(lldev);


  hidma_cleanup_pending_tre(lldev, 0xFF,
       HIDMA_EVRE_STATUS_ERROR);

  return;
 }

 spin_lock_irqsave(&lldev->lock, irqflags);
 writel_relaxed(cause, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);
 spin_unlock_irqrestore(&lldev->lock, irqflags);
 hidma_handle_tre_completion(lldev);
}
